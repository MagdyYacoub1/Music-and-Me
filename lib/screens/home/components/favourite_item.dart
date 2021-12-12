import 'package:flutter/material.dart';

import '../../../constants.dart';

class FavouriteItem extends StatelessWidget {
  const FavouriteItem({
    Key? key,
    required this.image,
    required this.title,
    required this.singer,
  }) : super(key: key);

  final String image;
  final String title;
  final String singer;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                width: 90.0,
                height: 90.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  image: DecorationImage(
                    alignment: Alignment.centerLeft,
                    fit: BoxFit.cover,
                    image: AssetImage(image),
                  ),
                ),
              ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 25.0,
                    height: 25.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: 15.0),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  style: contextTextStyle,
                ),
                Text(
                  singer,
                  overflow: TextOverflow.ellipsis,
                  style: secondaryContextTextStyle,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
