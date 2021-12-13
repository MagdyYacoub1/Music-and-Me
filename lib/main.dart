import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:me_music/my_themes.dart';
import 'package:me_music/screens/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Me Music',
      theme: MyThemes.lightTheme,
      darkTheme: MyThemes.darkTheme,
      home: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarBrightness: Brightness.dark,
            systemNavigationBarColor: Colors.transparent,
            systemNavigationBarIconBrightness: Brightness.dark
          ),
          child: MyHomePage()),
    );
  }
}
