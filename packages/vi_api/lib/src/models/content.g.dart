// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Content _$ContentFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Content',
      json,
      ($checkedConvert) {
        final val = Content(
          contents: $checkedConvert(
              'contents',
              (v) => (v as List<dynamic>)
                  .map(
                      (e) => ArticleContent.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$ContentToJson(Content instance) => <String, dynamic>{
      'contents': instance.contents,
    };
