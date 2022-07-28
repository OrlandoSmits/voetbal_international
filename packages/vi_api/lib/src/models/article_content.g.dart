// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'article_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArticleContent _$ArticleContentFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ArticleContent',
      json,
      ($checkedConvert) {
        final val = ArticleContent(
          articleType: $checkedConvert('articleType', (v) => v as String),
          articleContent: $checkedConvert('articleContent', (v) => v as String),
          imageDescription:
              $checkedConvert('imageDescription', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$ArticleContentToJson(ArticleContent instance) =>
    <String, dynamic>{
      'articleType': instance.articleType,
      'articleContent': instance.articleContent,
      'imageDescription': instance.imageDescription,
    };
