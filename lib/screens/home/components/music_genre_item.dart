import 'package:flutter/material.dart';

import '../../../constants.dart';

class MusicGenreItem extends StatelessWidget {
  const MusicGenreItem(
      {Key? key,
      required this.image,
      required this.genre,
      required this.cardColor,
      required this.makeBigger})
      : super(key: key);

  final String image;
  final String genre;
  final Color cardColor;
  final bool makeBigger;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 190.0,
      margin: EdgeInsets.only(
        left: 15.0,
        right: 15.0,
        top: makeBigger ? 0.0 : 30.0,
        bottom: 15.0,
      ),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(25.0),
        boxShadow: [
          makeBigger
              ? BoxShadow(
                  color: cardColor.withOpacity(0.3),
                  spreadRadius: 2.0,
                  blurRadius: 7,
                  offset: Offset(7, 7),
                )
              : BoxShadow(
                  color: Colors.transparent,
                ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10.0,
          vertical: 20.0,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.more_vert,
                  size: 30.0,
                  color: kGreyColor,
                )
              ],
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    right: 8.0,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      ImageIcon(
                        AssetImage(
                          image,
                        ),
                        size: 35.0,
                        color: kContextColor,
                      ),
                      SizedBox(height: 7.0),
                      Text(
                        genre,
                        style: contextWhiteTextStyle,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
