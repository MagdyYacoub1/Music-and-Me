import 'package:me_music/generated/assets.dart';

class Song {
  String name;
  String singer;
  String? cover;
  String duration;

  Song({
    required this.name,
    required this.singer,
    this.cover,
    required this.duration,
  });
}

List<Song> albumSongs = [
  Song(
    name: "Hello",
    singer: "Adele",
    duration: "4.55",
    cover: Assets.imagesAdele1,
  ),
  Song(
    name: "Send My Love",
    singer: "Adele",
    duration: "3.43",
    cover: Assets.imagesAdele2,
  ),
  Song(
    name: "I Miss You",
    singer: "Adele",
    duration: "5.48",
    cover: Assets.imagesAdele1,
  ),
  Song(
    name: "When We Were Young",
    singer: "Adele",
    duration: "4.50",
    cover: Assets.imagesAdele1,
  ),
  Song(
    name: "Water Under the Bridge",
    singer: "Adele",
    duration: "4.00",
  ),
  Song(
    name: "Million Years Ago",
    singer: "Adele",
    duration: "3.47",
    cover: Assets.imagesAdele1,
  ),
];
