import 'package:flutter/material.dart';

import '../../models/models.dart';

class ArticleImage extends StatelessWidget {
  final ArticleContent articleContent;

  const ArticleImage({
    Key? key,
    required this.articleContent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(articleContent.articleContent),
        Text(
          articleContent.imageDescription ?? '',
          textAlign: TextAlign.start,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
        )
      ],
    );
  }
}
