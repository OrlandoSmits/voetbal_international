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
          id: $checkedConvert('id', (v) => v as int),
          title: $checkedConvert('title', (v) => v as String),
          subTitle: $checkedConvert('subTitle', (v) => v as String),
          image: $checkedConvert('image', (v) => v as String),
          myInterest: $checkedConvert('myInterest', (v) => v as bool),
        );
        return val;
      },
    );

Map<String, dynamic> _$NewsItemToJson(NewsItem instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'subTitle': instance.subTitle,
      'image': instance.image,
      'myInterest': instance.myInterest,
    };
