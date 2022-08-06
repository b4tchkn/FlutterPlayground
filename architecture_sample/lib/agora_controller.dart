import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:architecture_sample/util/log.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:permission_handler/permission_handler.dart';

typedef OnJoinChannelSuccess = void Function(
  String channel,
  int uid,
  int elapsed,
);

typedef OnUserJoined = void Function(
  int uid,
  int elapsed,
);

typedef OnUserOffline = void Function(
  int uid,
  UserOfflineReason reason,
);

final agoraControllerProvider = Provider((_) => AgoraController());

class AgoraController {
  late RtcEngine? engine;

  // how to get: https://console.agora.io/en/project/YXMV0nMtB
  static const _appId = '235ff31d2a394cdda83264ef9a45293d';
  static const _token =
      '006235ff31d2a394cdda83264ef9a45293dIAD4WvoeP3r4nh48ntizJA53OBQnfqvFdqcN6gQEKN85Amg2GWEAAAAAEABUJOp9h3jvYgEAAQCEeO9i';
  static const _channelName = 'maro';

  Future<void> init() async {
    await [Permission.camera, Permission.microphone].request();

    try {
      engine = await RtcEngine.create(_appId);
      logger.d('エンジン初期化完了 $engine');
    } catch (e, s) {
      logger.e('$e, $s');
    }

    await engine?.enableAudio();
    await engine?.enableVideo();

    logger.d('オーディオとビデオのenable完了');
  }

  void setEventHandler({
    required OnJoinChannelSuccess onJoinChannelSuccess,
    required OnUserJoined onUserJoined,
    required OnUserOffline onUserOffline,
  }) =>
      engine?.setEventHandler(
        RtcEngineEventHandler(
          joinChannelSuccess: onJoinChannelSuccess,
          userJoined: onUserJoined,
          userOffline: onUserOffline,
          error: logger.e,
          warning: logger.w,
        ),
      );

  Future<void> joinChannelAsNeko() => _joinChannel(001);

  Future<void> joinChannelAsOwner() => _joinChannel(002);

  Future<void> _joinChannel(int uid) async {
    try {
      await engine?.joinChannel(_token, _channelName, null, uid);
    } catch (e, s) {
      logger.es(e, s);
    }
  }

  Future<void> leaveChannel() async {
    try {
      await engine?.leaveChannel();
    } catch (e, s) {
      logger.es(e, s);
    }
  }

  Future<void> dispose() async {
    try {
      await engine?.leaveChannel();
      await engine?.destroy();
    } catch (e, s) {
      logger.es(e, s);
    }
  }
}
