import 'package:flutter/material.dart';

import '../../../constants.dart';

class AlbumHeaderAndDetails extends StatelessWidget {
  const AlbumHeaderAndDetails({
    Key? key,
    required this.albumColor,
    required this.albumName,
    required this.albumImage,
  }) : super(key: key);

  final Color albumColor;
  final String albumName;
  final String albumImage;

  @override
  Widget build(BuildContext context) {
    Color lighterColor = lighten(albumColor, 0.185);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          // ----------Search Bar----------
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                decoration: BoxDecoration(
                  color: lighterColor,
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: const Icon(
                    Icons.arrow_back_ios_new_rounded,
                    size: 15.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(width: 75.0),
            Expanded(
              child: Container(
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: lighterColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    bottomLeft: Radius.circular(25.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 15.0,
                    bottom: 15.0,
                    left: 30.0,
                  ),
                  child: const Icon(
                    Icons.search,
                    size: 27.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
        Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Hero(
              tag: albumName,
              child: ImageIcon(
                AssetImage(
                  albumImage,
                ),
                size: 35.0,
                color: kGreyColor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    albumName,
                    style: albumTextStyle,
                  ),
                  Text(
                    "72 listening. created by ressems",
                    style: contextWhiteSmallTextStyle,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}