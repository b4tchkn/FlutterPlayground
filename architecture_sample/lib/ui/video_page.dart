import 'package:agora_rtc_engine/rtc_local_view.dart' as RtcLocalView;
import 'package:agora_rtc_engine/rtc_remote_view.dart' as RtcRemoteView;
import 'package:architecture_sample/agora_controller.dart';
import 'package:architecture_sample/hooks/use_effect_once.dart';
import 'package:architecture_sample/ui/show_app_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VideoPage extends HookConsumerWidget {
  const VideoPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final agoraController = ref.watch(agoraControllerProvider);
    final selfUid = useState<int?>(null);
    final nekoUid = useState<int?>(null);

    useEffectOnce(() {
      Future.microtask(() async {
        await agoraController.init();

        agoraController.setEventHandler(
          onJoinChannelSuccess: (channel, uid, elapsed) {
            selfUid.value = uid;
            showAppSnackBar(
                context, '参加に成功しました。\nchannel: $channel, uid: $uid');
          },
          onUserJoined: (uid, elapsed) {
            nekoUid.value = uid;
            showAppSnackBar(context, 'ユーザが参加しました。\nuid: $uid');
          },
          onUserOffline: (uid, reason) {
            nekoUid.value = null;
            showAppSnackBar(
                context, 'ユーザがオフラインになりました。\nuid: $uid, reason: $reason');
          },
        );
      });
      return agoraController.dispose;
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('VideoPage'),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          nekoUid.value == null || selfUid.value == null
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text('参加を待っています。。。。'),
                        Gap(8.0),
                        LinearProgressIndicator(),
                      ],
                    ),
                  ),
                )
              : RtcRemoteView.SurfaceView(
                  uid: nekoUid.value!,
                  channelId: channelName,
                ),
          Positioned(
            bottom: 16.0,
            left: 0.0,
            right: 0.0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text('自分のID: ${selfUid.value}'),
                  Text('相手のID: ${nekoUid.value}'),
                  const Gap(16.0),
                  ElevatedButton(
                    onPressed: agoraController.joinChannelAsNeko,
                    child: const Text('猫として参加'),
                  ),
                  const Gap(16.0),
                  ElevatedButton(
                    onPressed: agoraController.joinChannelAsOwner,
                    child: const Text('飼い主として参加'),
                  ),
                  const Gap(32.0),
                  ElevatedButton(
                    onPressed: () async {
                      await agoraController.leaveChannel();
                      selfUid.value = null;
                    },
                    child: const Text('退席'),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 8.0,
            right: 8.0,
            child: selfUid.value == null
                ? const CircularProgressIndicator()
                : const SizedBox(
                    height: 150,
                    child: AspectRatio(
                      aspectRatio: 9 / 16,
                      child: RtcLocalView.SurfaceView(
                        channelId: channelName,
                      ),
                    ),
                  ),
          )
        ],
      ),
    );
  }
}
