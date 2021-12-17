import 'package:flutter/material.dart';
import 'package:me_music/generated/assets.dart';
import 'package:me_music/screens/player/player_screen.dart';
import 'package:palette_generator/palette_generator.dart';

import '../../../constants.dart';

class AlbumSong extends StatelessWidget {
  const AlbumSong({
    Key? key,
    required this.name,
    required this.singer,
    this.cover,
    required this.duration,
  }) : super(key: key);

  final String name;
  final String singer;
  final String? cover;
  final String duration;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 35.0,
        right: 25,
        top: 15.0,
        bottom: 15.0,
      ),
      child: InkWell(
        onTap: () {
          _generatePalette(cover ?? Assets.imagesDefaultAlbumArt)
              .then((_palette) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PlayerScreen(
                  image: cover ?? Assets.imagesDefaultAlbumArt,
                  song: name,
                  singer: singer,
                  paletteColors: _palette.paletteColors,
                ),
              ),
            );
          });
        },
        child: Row(
          // ----------album Song--------
          children: [
            Container(
              width: 60.0,
              height: 60.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                image: DecorationImage(
                  alignment: Alignment.centerLeft,
                  fit: BoxFit.cover,
                  image: AssetImage(cover ?? Assets.imagesDefaultAlbumArt),
                ),
              ),
            ),
            SizedBox(width: 15.0),
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
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
            Spacer(),
            Text(
              duration,
              style: timeTextStyle,
            )
          ],
        ),
      ),
    );
  }

  Future<PaletteGenerator> _generatePalette(String imagePath) async {
    PaletteGenerator _paletteGenerator =
        await PaletteGenerator.fromImageProvider(
      AssetImage(imagePath),
      maximumColorCount: 2,
    );
    return _paletteGenerator;
  }
}
