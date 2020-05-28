class Music {
  const Music({
    this.thumbNail,
    this.title,
    this.artist,
    this.musicLength,
  });

  factory Music.fromJson(Map<String, dynamic> json) {
    return Music(
      thumbNail: json['thumbNail'],
      title: json['title'],
      artist: json['artist'],
      musicLength: json['musicLength'],
    );
  }

  static String convertMusicLength(int musicLength) {
    final int min = musicLength ~/ 60;
    final int sec = musicLength % 60;
    return "$min:$sec";
  }

  final String thumbNail;
  final String title;
  final String artist;
  final int musicLength;
}
