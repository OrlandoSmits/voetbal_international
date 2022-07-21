// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'pro_news_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProNewsResponse _$ProNewsResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ProNewsResponse',
      json,
      ($checkedConvert) {
        final val = ProNewsResponse(
          news: $checkedConvert(
              'news',
              (v) => (v as List<dynamic>)
                  .map((e) => NewsItem.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$ProNewsResponseToJson(ProNewsResponse instance) =>
    <String, dynamic>{
      'news': instance.news,
    };
