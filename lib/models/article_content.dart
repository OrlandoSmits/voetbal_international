import 'package:vi_repository/vi_repository.dart' as vi_repository;
import 'package:voetbal_international/models/models.dart';

enum ArticleType {
  intro,
  header,
  subTitle,
  firstAlinea,
  alinea,
  image;

  factory ArticleType.fromValue(String text) {
    return ArticleType.values.firstWhere(
        (element) => element.name.toString().toLowerCase() == text,
        orElse: () => ArticleType.alinea);
  }
}

extension ArticleTypeX on ArticleType {
  bool get isIntro => this == ArticleType.intro;

  bool get isHeader => this == ArticleType.header;

  bool get isSubTitle => this == ArticleType.subTitle;

  bool get isFirstAlinea => this == ArticleType.firstAlinea;

  bool get isAlinea => this == ArticleType.alinea;

  bool get isImage => this == ArticleType.image;
}

class ArticleContent {
  final ArticleType articleType;
  final String articleContent;
  String? imageDescription;

  ArticleContent({
    required this.articleType,
    required this.articleContent,
    this.imageDescription
  });

  factory ArticleContent.fromRepository(
      vi_repository.ArticleContent articleContent) {
    return ArticleContent(
        articleType: ArticleType.fromValue(articleContent.articleType),
        articleContent: articleContent.articleContent,
        imageDescription: articleContent.imageDescription,
    );
  }
}
