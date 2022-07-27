import 'package:vi_repository/vi_repository.dart' as vi_repository;

class Author {
  final String name;
  final String image;

  Author({
    required this.name,
    required this.image,
  });

  factory Author.fromRepository(vi_repository.Author author) {
    return Author(name: author.name, image: author.image);
  }
}
