import 'package:flutter/material.dart';

import 'AlbumHeaderAndDetails.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
    required this.height,
    required this.albumColor,
  }) : super(key: key);

  final double height;
  final Color albumColor;

  @override
  Widget build(BuildContext context) {
    const double arcRadius = 100.0;
    return ClipPath(
      clipper: MyCustomClipper(arcRadius: arcRadius),
      child: Container(
        // Custom Background
        width: double.infinity,
        height: height,
        color: albumColor.withOpacity(0.96),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 35.0,
            left: 15.0,
            bottom: arcRadius + 45,
          ),
          child: AlbumHeaderAndDetails(albumColor: albumColor),
        ),
      ),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  MyCustomClipper({required this.arcRadius});

  final double arcRadius;

  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height);
    path.arcToPoint(Offset(size.width * 0.25, size.height - arcRadius),
        radius: Radius.circular(arcRadius));
    path.lineTo(size.width, size.height - arcRadius);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => false;
}
