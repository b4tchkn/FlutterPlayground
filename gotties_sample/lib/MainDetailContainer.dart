import 'package:flutter/cupertino.dart';

class MainDetailContainer extends StatelessWidget {
  final String _title = "タイトル：100年の時を越えて";
  final String _content = "内容：暇だから100年振りにお掃除しちゃいました♪♪♪♪";
  final String _category = "タグ：押入れ";

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[Text(_title), Text(_content), Text(_category)],
    );
  }
}
