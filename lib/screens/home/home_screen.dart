import 'package:flutter/material.dart';
import 'package:me_music/generated/assets.dart';
import 'package:me_music/models/Favourite.dart';
import 'package:me_music/models/music_genres.dart';

import '../../constants.dart';
import 'components/favourite_item.dart';
import 'components/music_genre_item.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ScrollController controller = ScrollController();
  double topContainerIndex = 0;

  @override
  void initState() {
    controller.addListener(() {
      double value = controller.offset / 180;
      setState(() {
        topContainerIndex = value;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Brightness brightness = MediaQuery.of(context).platformBrightness;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15.0,
                      bottom: 15.0,
                    ),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Mego",
                            style: nameTextStyle,
                          ),
                          Text(
                            "Good Morning",
                            style: contextTextStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: size.width * 0.5,
                    height: size.height * 0.4,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        alignment: Alignment.centerLeft,
                        fit: BoxFit.cover,
                        image: AssetImage(brightness == Brightness.light
                            ? Assets.imagesHeadphone3
                            : Assets.imagesHeadphone2),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 280.0,
                padding: EdgeInsets.symmetric(vertical: 15.0),
                child: ListView.builder(
                  controller: controller,
                  itemExtent: 220.0,
                  physics: BouncingScrollPhysics(),
                  itemCount: genres.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return MusicGenreItem(
                      genre: genres[index].genre,
                      image: genres[index].image,
                      cardColor: genres[index].cardColor,
                      makeBigger:
                          topContainerIndex.toInt() == index ? true : false,
                      albumSongs: genres[index].albumSongs,
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Favourite",
                      style: nameTextStyle,
                    ),
                  ],
                ),
              ),
              ListView.builder(padding: EdgeInsets.only(top: 15.0),
                shrinkWrap: true,
                itemCount: favourites.length,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index){
                  return FavouriteItem(
                    image: favourites[index].image,
                    title: favourites[index].title,
                    singer: favourites[index].singer,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
