import 'package:flutter/material.dart';

const primaryColor = Color(0xff2697ff);

const secondaryColor = Color(0xff2a2d3e);
const bgColor = Color(0xff212332);
final kSimpleTextSize = 18.0;
const kTextColor = Color(0xff12157d);
const kTextLightColor = Color(0xff555555);
const kDefPad = 20.0;

final kDefaultCardShadow = BoxShadow(
  offset: Offset(0, 20),
  blurRadius: 50,
  color: Colors.black.withOpacity(0.1),
);
final kDefaultInputDecorationTheme = InputDecorationTheme(
  border: kDefaultOutlineInputBorder,
  enabledBorder: kDefaultOutlineInputBorder,
  focusedBorder: kDefaultOutlineInputBorder,
);
final kDefaultOutlineInputBorder = OutlineInputBorder(
    //borderRadius: BorderRadius.circular(50),
    borderSide: BorderSide(
  color: Color(0xffcee4fd),
));
