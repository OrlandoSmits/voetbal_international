import 'package:flutter/material.dart';

class CommentsIcon extends StatelessWidget {
  final int amountOfComments;
  const CommentsIcon({Key? key, required this.amountOfComments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        const Icon(
          Icons.mode_comment_outlined,
          color: Colors.white,
          size: 25,
        ),
        Container(
          padding:
          const EdgeInsets.only(bottom: 4),
          child: Text(
            amountOfComments.toString(),
            style: const TextStyle(
                color: Colors.white,
                fontSize: 10),
          ),
        ),
      ],
    );
  }
}
