// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'news_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsItem _$NewsItemFromJson(Map<String, dynamic> json) => $checkedCreate(
      'NewsItem',
      json,
      ($checkedConvert) {
        final val = NewsItem(
          title: $checkedConvert('title', (v) => v as String),
          subTitle: $checkedConvert('subTitle', (v) => v as String),
          image: $checkedConvert('image', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$NewsItemToJson(NewsItem instance) => <String, dynamic>{
      'title': instance.title,
      'subTitle': instance.subTitle,
      'image': instance.image,
    };
