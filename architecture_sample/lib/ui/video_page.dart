import 'package:architecture_sample/agora_controller.dart';
import 'package:architecture_sample/hooks/use_effect_once.dart';
import 'package:architecture_sample/ui/show_app_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VideoPage extends HookConsumerWidget {
  const VideoPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final agoraController = ref.watch(agoraControllerProvider);

    useEffectOnce(() {
      Future.microtask(() async {
        await agoraController.init();

        agoraController.setEventHandler(
          onJoinChannelSuccess: (channel, uid, elapsed) {
            showAppSnackBar(
                context, '参加に成功しました。\nchannel: $channel, uid: $uid');
          },
          onUserJoined: (uid, elapsed) {
            showAppSnackBar(context, 'ユーザが参加しました。\nuid: $uid');
          },
          onUserOffline: (uid, reason) {
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Gap(16.0),
          OutlinedButton(
            onPressed: agoraController.joinChannelAsNeko,
            child: const Text('猫として参加'),
          ),
          const Gap(16.0),
          OutlinedButton(
            onPressed: agoraController.joinChannelAsNeko,
            child: const Text('飼い主として参加'),
          ),
          const Gap(32.0),
          OutlinedButton(
            onPressed: agoraController.leaveChannel,
            child: const Text('退席'),
          ),
        ],
      ),
    );
  }
}
