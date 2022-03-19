import 'package:flutter/material.dart';

// Colors that we use in our app
const kTextColor = Colors.black;
const bgColorDarkTheme = Color(0xff212121);
const kContextColor = Color(0xFFFFFFF4);
const kGreyColor = Colors.grey;

const kDefaultDuration = Duration(milliseconds: 300);
const double kDefaultPadding = 20.0;

const TextStyle nameTextStyle = TextStyle(
  fontSize: 40.0,
  fontWeight: FontWeight.w800,
);

const TextStyle contextTextStyle =
    TextStyle(fontSize: 23.0, fontWeight: FontWeight.w700);

const TextStyle secondaryContextTextStyle = TextStyle(
  fontSize: 17.0,
  fontWeight: FontWeight.w400,
  color: kGreyColor,
);

const TextStyle albumTextStyle = TextStyle(
    fontSize: 40.0, fontWeight: FontWeight.w900, color: kContextColor);

const TextStyle contextWhiteTextStyle = TextStyle(
  fontSize: 23.0,
  color: kContextColor,
  fontWeight: FontWeight.w700,
);

const TextStyle contextWhiteSmallTextStyle = TextStyle(
  fontSize: 17.0,
  color: kContextColor,
  fontWeight: FontWeight.w500,
);

const TextStyle timeTextStyle = TextStyle(
  fontSize: 17.0,
  fontWeight: FontWeight.w700,
);

Color lighten(Color color, [double amount = 0.1]) {
  assert(amount >= 0 && amount <= 1);

  final hsl = HSLColor.fromColor(color);
  final hslLight = hsl.withLightness((hsl.lightness + amount).clamp(0.0, 1.0));

  return hslLight.toColor();
}
