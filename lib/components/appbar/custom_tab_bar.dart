import 'package:flutter/material.dart';
import 'package:paknesil/constants.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({Key? key, required this.controller, required this.tabs})
      : super(key: key);
  final TabController controller;
  final List<Widget> tabs;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double tabBarScaling = size.width > 1400
        ? 0.21
        : size.width > 1100
            ? 0.3
            : 0.4;
    return Container(
      width: size.width * tabBarScaling,
      child: Theme(
        data: ThemeData(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            hoverColor: Colors.transparent),
        child: TabBar(
          controller: controller,
          tabs: tabs,
          indicatorColor: primaryColor,
        ),
      ),
    );
  }
}
