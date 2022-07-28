import 'package:flutter/material.dart';
import 'package:voetbal_international/models/models.dart';

class AuthorRow extends StatelessWidget {
  final Author author;
  const AuthorRow({Key? key, required this.author}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, top: 16),
      child: Row(
        children: [
          const Text(
            "Door ",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            author.name,
            style: const TextStyle(
                decoration: TextDecoration.underline),
          ),
          Container(
            margin: const EdgeInsets.only(left: 4),
            child: CircleAvatar(
              radius: 20.0,
              backgroundImage:
              NetworkImage(author.image),
            ),
          )
        ],
      ),
    );
  }
}
