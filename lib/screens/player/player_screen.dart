import 'package:flutter/material.dart';

import '../../constants.dart';
import 'components/control_panel.dart';
import 'components/cover_and_progress.dart';
import 'components/options_panel.dart';

class PlayerScreen extends StatelessWidget {
  const PlayerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Brightness brightness = MediaQuery.of(context).platformBrightness;
    double heightPercentage = 0.25;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: size.height * heightPercentage,
            color: brightness == Brightness.light? bgColorDarkTheme: Colors.white,
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
                          color: Color(0xFF241B30),
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
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                SizedBox(height: size.height * 0.15),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60.0),
                      topRight: Radius.circular(60.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 75.0,
                      bottom: 10.0
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CoverAndProgress(),
                        SizedBox(height: 25.0),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Hello",
                              overflow: TextOverflow.ellipsis,
                              style: contextTextStyle,
                            ),
                            Text(
                              "Adele",
                              overflow: TextOverflow.ellipsis,
                              style: secondaryContextTextStyle,
                            ),
                          ],
                        ),
                        SizedBox(height: 30.0),
                        ControlPanel(),
                        SizedBox(height:70),
                        OptionsPanel(),
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

