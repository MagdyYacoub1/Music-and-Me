import 'package:flutter/material.dart';
import 'package:me_music/generated/assets.dart';
import 'package:me_music/screens/player/player_screen.dart';
import 'package:palette_generator/palette_generator.dart';

import '../../../constants.dart';

class FavouriteItem extends StatelessWidget {
  const FavouriteItem({
    Key? key,
    this.image,
    required this.title,
    required this.singer,
  }) : super(key: key);

  final String? image;
  final String title;
  final String singer;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 15.0,
      ),
      child: InkWell(
        onTap: () {
          _generatePalette(image ?? Assets.imagesDefaultAlbumArt)
              .then((_palette) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PlayerScreen(
                  image: image ?? Assets.imagesDefaultAlbumArt,
                  song: title,
                  singer: singer,
                  paletteColors: _palette.paletteColors,
                ),
              ),
            );
          });
        },
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
                      image: AssetImage(image?? Assets.imagesDefaultAlbumArt),
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
                          shape: BoxShape.circle, color: Colors.white),
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
      ),
    );
  }

  Future<PaletteGenerator> _generatePalette(String imagePath) async {
    PaletteGenerator _paletteGenerator =
    await PaletteGenerator.fromImageProvider(
      AssetImage(imagePath),
      maximumColorCount: 3,
    );
    return _paletteGenerator;
  }
}
