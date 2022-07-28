class ArticleContent {
  final String articleType;
  final String articleContent;
  String? imageDescription;

  ArticleContent({
    required this.articleType,
    required this.articleContent,
    this.imageDescription
  });
}
