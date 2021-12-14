import 'package:flutter/material.dart';
import 'package:me_music/models/song.dart';

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
    const double heightPercentage = 0.55;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height * heightPercentage,
            color: Colors.black,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: size.height * heightPercentage - 127),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(100.0),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 80,
                    ),
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
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
