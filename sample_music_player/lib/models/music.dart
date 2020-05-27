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

  final String thumbNail;
  final String title;
  final String artist;
  final int musicLength;
}
