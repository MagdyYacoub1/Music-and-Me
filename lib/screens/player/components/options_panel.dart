import 'package:flutter/material.dart';

class OptionsPanel extends StatelessWidget {
  const OptionsPanel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.bookmark_border_rounded,
            size: 25,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.shuffle_rounded,
            size: 25,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.repeat_rounded,
            size: 25,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.playlist_add_rounded,
            size: 25,
          ),
        ),
      ],
    );
  }
}
