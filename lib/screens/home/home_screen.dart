import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:me_music/models/music_genres.dart';

import '../../constants.dart';
import 'components/music_genre_item.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
                        image: AssetImage("assets/images/headphone3.png"),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 15.0),
                height: 250.0,
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  itemCount: genres.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return MusicGenreItem(
                      genre: genres[index].genre,
                      image: genres[index].image,
                      cardColor: genres[index].cardColor,
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
