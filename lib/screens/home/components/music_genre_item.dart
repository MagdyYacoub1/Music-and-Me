import 'package:flutter/material.dart';

import '../../../constants.dart';

class MusicGenreItem extends StatelessWidget {
  const MusicGenreItem(
      {Key? key,
      required this.image,
      required this.genre,
      required this.cardColor})
      : super(key: key);

  final String image;
  final String genre;
  final Color cardColor;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(
        horizontal: 15.0,
        vertical: 0.0,
      ),
      color: cardColor,
      shadowColor: cardColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0),
      ),
      elevation: 7.0,
      child: Container(
        width: 190.0,
        height: 60.0,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10.0,
            vertical: 20.0,
          ),
          child: Column(
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
                            "assets/images/" + image,
                          ),
                          size: 40.0,
                          color: kContextColor,
                        ),
                        SizedBox(height: 7.0),
                        Text(
                          genre,
                          style: contextGreyTextStyle,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
