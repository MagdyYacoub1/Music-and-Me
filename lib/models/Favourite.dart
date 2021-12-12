import 'package:me_music/generated/assets.dart';

class MusicFavourite {
  String image;
  String title;
  String singer;

  MusicFavourite({
    required this.image,
    required this.title,
    required this.singer,
  });
}

List<MusicFavourite> favourites = [
  MusicFavourite(
    image: Assets.imagesCover1,
    title: "Far Away Forest",
    singer: "Mother Earth Sounds",
  ),
  MusicFavourite(
    image: Assets.imagesCover5,
    title: "Natureza Relaxante",
    singer: "Mother Nature Sound FX",
  ),
  MusicFavourite(
    image: Assets.imagesCover4,
    title: "Natural Sounds",
    singer: "Natural Sound Makers",
  ),
  MusicFavourite(
    image: Assets.imagesCover3,
    title: "Twilight Saga Breaking Dawn",
    singer: "Various Artists",
  ),
  MusicFavourite(
    image: Assets.imagesCover2,
    title: "Mother Nature Rain",
    singer: "Mother Nature Sound FX",
  ),
  MusicFavourite(
    image: Assets.imagesCover6,
    title: "Festival Fire",
    singer: "Various Artists",
  ),
  MusicFavourite(
    image: Assets.imagesCover1,
    title: "Far Away Forest",
    singer: "Mother Earth Sounds",
  ),
  MusicFavourite(
    image: Assets.imagesCover5,
    title: "Natureza Relaxante",
    singer: "Mother Nature Sound FX",
  ),
  MusicFavourite(
    image: Assets.imagesCover4,
    title: "Natural Sounds",
    singer: "Natural Sound Makers",
  ),
];
