import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:permission_handler/permission_handler.dart';

class AgoraController {
  late RtcEngine? engine;

  // how to get: https://console.agora.io/
  static const _appId = '235ff31d2a394cdda83264ef9a45293d';

  Future<void> initAgora() async {
    await [Permission.camera, Permission.microphone].request();
    final engine = await RtcEngine.create(_appId);

    await engine.enableAudio();
    await engine.enableVideo();

    engine.setEventHandler(
      RtcEngineEventHandler(
        joinChannelSuccess: (channel, uid, elapsed) {
          print('local user $uid joined');
        },
        userJoined: (int uid, int elapsed) {
          print('remote user $uid joined');
        },
        userOffline: (int uid, UserOfflineReason reason) {
          print('remote user $uid left channel');
        },
      ),
    );

    await engine.joinChannel(null, 'test', null, 0);
  }

  Future<void> joinChannel(String channelName) async =>
      engine?.joinChannel(null, channelName, null, 0);

  Future<void> leaveChannel() async {
    await engine?.leaveChannel();
    await engine?.destroy();
  }
}
