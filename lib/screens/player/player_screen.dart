
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'components/cover_and_progress.dart';

class PlayerScreen extends StatelessWidget {
  const PlayerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //Brightness brightness = MediaQuery.of(context).platformBrightness;
    double heightPercentage = 0.25;
    //Color lighterColor = lighten(Colors.grey, 0.2);

    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: size.height * heightPercentage,
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 45.0,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF424242),
                          shape: BoxShape.circle,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: const Icon(
                            Icons.arrow_back_ios_new_rounded,
                            size: 15.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        "Ambient",
                        textAlign: TextAlign.center,
                        style: contextWhiteTextStyle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: size.height * 0.15),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60.0),
                      topRight: Radius.circular(60.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 100.0,
                      horizontal: 30.0,
                    ),
                    child: Column(
                      children: [
                        CoverAndProgress(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
