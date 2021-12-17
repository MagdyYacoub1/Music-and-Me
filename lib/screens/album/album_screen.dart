import 'package:flutter/material.dart';
import 'package:me_music/models/song.dart';

import '../../constants.dart';
import 'components/Header.dart';
import 'components/album_song.dart';

class AlbumsScreen extends StatelessWidget {
  const AlbumsScreen({
    Key? key,
    required this.image,
    required this.genre,
    required this.albumColor,
    required this.albumSongs,
  }) : super(key: key);

  final String image;
  final String genre;
  final Color albumColor;
  final List<Song> albumSongs;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Brightness brightness = MediaQuery.of(context).platformBrightness;
    const double heightPercentage = 0.50;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height * heightPercentage,
            color: brightness == Brightness.light? bgColorDarkTheme: Colors.white,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: size.height * heightPercentage - 127),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(100.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 27.0),
                    child: ListView.builder(
                      padding: EdgeInsets.only(top: 50.0),
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      itemCount: albumSongs.length,
                      itemBuilder: (BuildContext context, int index) {
                        return AlbumSong(
                          name: albumSongs[index].name,
                          singer: albumSongs[index].singer,
                          duration: albumSongs[index].duration,
                          cover: albumSongs[index].cover,
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
          Header(
            height: size.height * heightPercentage,
            albumColor: albumColor,
            albumName: genre,
            albumImage: image,
          ),
        ],
      ),
    );
  }
}
