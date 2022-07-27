// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'author.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Author _$AuthorFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Author',
      json,
      ($checkedConvert) {
        final val = Author(
          name: $checkedConvert('name', (v) => v as String),
          image: $checkedConvert('image', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$AuthorToJson(Author instance) => <String, dynamic>{
      'name': instance.name,
      'image': instance.image,
    };
