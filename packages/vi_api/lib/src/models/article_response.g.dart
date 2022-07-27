// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'article_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArticleResponse _$ArticleResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ArticleResponse',
      json,
      ($checkedConvert) {
        final val = ArticleResponse(
          id: $checkedConvert('id', (v) => v as int),
          image: $checkedConvert('image', (v) => v as String),
          date: $checkedConvert('date', (v) => v as String),
          time: $checkedConvert('time', (v) => v as String),
          amountOfComments:
              $checkedConvert('amountOfComments', (v) => v as int),
          title: $checkedConvert('title', (v) => v as String),
          author: $checkedConvert(
              'author', (v) => Author.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$ArticleResponseToJson(ArticleResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'date': instance.date,
      'time': instance.time,
      'amountOfComments': instance.amountOfComments,
      'title': instance.title,
      'author': instance.author,
    };
