import 'package:flutter/material.dart';

class OurStatusModel {
  int id;
  String title;
  int count;
  IconData iconData;
  OurStatusModel(
      {required this.id,
      required this.title,
      required this.count,
      required this.iconData});
}

List<OurStatusModel> ourStatusModel = [
  OurStatusModel(id: 1, title: 'Diňleýji', count: 3341, iconData: Icons.school),
  OurStatusModel(id: 2, title: 'Mugallym', count: 63, iconData: Icons.group),
  OurStatusModel(
      id: 3, title: 'Ugurlar', count: 6, iconData: Icons.auto_stories),
  OurStatusModel(id: 4, title: 'Şahamça', count: 4, iconData: Icons.apartment),
];
