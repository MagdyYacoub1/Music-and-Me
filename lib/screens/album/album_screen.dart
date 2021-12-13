import 'package:flutter/material.dart';

import 'components/Header.dart';

class AlbumsScreen extends StatelessWidget {
  const AlbumsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    const Color albumColor = Color(0xFF2B159E);
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
              SizedBox(height: size.height * heightPercentage - 135),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(100.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Header(
            height: size.height * heightPercentage,
            albumColor: albumColor,
          ),
        ],
      ),
    );
  }
}
