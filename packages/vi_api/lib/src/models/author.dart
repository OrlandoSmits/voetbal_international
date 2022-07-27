import 'package:json_annotation/json_annotation.dart';

part 'author.g.dart';

@JsonSerializable()
class Author {

  @JsonValue('name')
  final String name;

  @JsonValue('image')
  final String image;

  Author({
    required this.name,
    required this.image,
  });

  factory Author.fromJson(Map<String, dynamic> json) =>
      _$AuthorFromJson(json);

}