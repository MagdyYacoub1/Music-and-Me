import 'package:flutter/material.dart';
import 'package:me_music/generated/assets.dart';
import 'package:me_music/models/song.dart';

class MusicGenres {
  String image;
  String genre;
  Color cardColor;
  List<Song> albumSongs;

  MusicGenres({
    required this.image,
    required this.genre,
    required this.cardColor,
    required this.albumSongs,
  });
}

List<MusicGenres> genres = [
  MusicGenres(
    genre: "Ambient",
    image: Assets.imagesThunder,
    cardColor: Color(0xFF2B159E),
    albumSongs: albumSongs,
  ),
  MusicGenres(
    genre: "Hip Hop",
    image: Assets.imagesGeography,
    cardColor: Color(0xFF159E96),
    albumSongs: albumSongs,
  ),
  MusicGenres(
    genre: "Rock",
    image: Assets.imagesRock,
    cardColor: Color(0xFF3b5998),
    albumSongs: albumSongs,
  ),
  MusicGenres(
    genre: "Electronic",
    image: Assets.imagesElectronic,
    cardColor: Color(0xFF800080),
    albumSongs: albumSongs,
  ),
  MusicGenres(
    genre: "Folk",
    image: Assets.imagesFolk,
    cardColor: Color(0xFF77AB59),
    albumSongs: albumSongs,
  ),
  MusicGenres(
    genre: "Jazz",
    image: Assets.imagesJazz,
    cardColor: Color(0xFF536872),
    albumSongs: albumSongs,
  ),
  MusicGenres(
    genre: "Classic",
    image: Assets.imagesTrebleClef,
    cardColor: Color(0xFF9E379F),
    albumSongs: albumSongs,
  ),
  MusicGenres(
    genre: "Metal",
    image: Assets.imagesMetal,
    cardColor: Color(0xFFFF6289),
    albumSongs: albumSongs,
  ),
  MusicGenres(
    genre: "Disco",
    image: Assets.imagesDisco,
    cardColor: Color(0xFF493267),
    albumSongs: albumSongs,
  ),

];
