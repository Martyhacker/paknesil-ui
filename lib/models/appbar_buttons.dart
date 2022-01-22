
import 'package:flutter/material.dart';

BuildContext? context;

class AppBarButtons {
  int id;
  String btnTitle;
  String destination;
  AppBarButtons(
      {required this.id, required this.btnTitle, required this.destination});
  void buildContext(BuildContext ctx) {
    ctx = ctx;
  }
}

List<AppBarButtons> appBarButtons = [
  AppBarButtons(
    id: 1,
    btnTitle: 'Tazelikler',
    destination: '/',
  ),
  AppBarButtons(
    id: 2,
    btnTitle: 'Kurslar',
    destination: '/',
  ),
  AppBarButtons(
    id: 3,
    btnTitle: 'Şahamçalarymyz',
    destination: '/',
  ),
  AppBarButtons(
    id: 4,
    btnTitle: 'Galereýa',
    destination: '/',
  ),
  AppBarButtons(
    id: 5,
    btnTitle: 'Biz barada',
    destination: '/about',
  ),
  AppBarButtons(
    id: 6,
    btnTitle: 'Habarlaşmak',
    destination: '/',
  ),
];
