import 'package:flutter/material.dart';
import 'package:me_music/generated/assets.dart';

class MusicGenres {
  String image;
  String genre;
  Color cardColor;

  MusicGenres({
    required this.image,
    required this.genre,
    required this.cardColor,
  });
}

List<MusicGenres> genres = [
  MusicGenres(
    genre: "Ambient",
    image: Assets.imagesThunder,
    cardColor: Color(0xFF2B159E),
  ),
  MusicGenres(
    genre: "Hip Hop",
    image: Assets.imagesGeography,
    cardColor: Color(0xFF159E96),
  ),
  MusicGenres(
    genre: "Rock",
    image: Assets.imagesRock,
    cardColor: Color(0xFF3b5998),
  ),
  MusicGenres(
    genre: "Electronic",
    image: Assets.imagesElectronic,
    cardColor: Color(0xFF800080),
  ),
  MusicGenres(
    genre: "Folk",
    image: Assets.imagesFolk,
    cardColor: Color(0xFF77AB59),
  ),
  MusicGenres(
    genre: "Jazz",
    image: Assets.imagesJazz,
    cardColor: Color(0xFF536872),
  ),
  MusicGenres(
    genre: "Classic",
    image: Assets.imagesTrebleClef,
    cardColor: Color(0xFF9E379F),
  ),
  MusicGenres(
    genre: "Metal",
    image: Assets.imagesMetal,
    cardColor: Color(0xFFFF6289),
  ),
  MusicGenres(
    genre: "Disco",
    image: Assets.imagesDisco,
    cardColor: Color(0xFF493267),
  ),

];
