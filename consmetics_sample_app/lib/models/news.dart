class News {
  const News({
    this.imageUrl,
    this.title,
    this.isNew,
    this.tag,
  });

  factory News.fromJson(Map<String, dynamic> json) {
    return News(
      imageUrl: json['imageUrl'],
      title: json['title'],
      isNew: json['isNew'],
      tag: json['tag'],
    );
  }

  final String imageUrl;
  final String title;
  final bool isNew;
  final String tag;
}
