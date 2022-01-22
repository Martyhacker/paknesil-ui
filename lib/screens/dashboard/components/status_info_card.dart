import 'package:flutter/material.dart';
import 'package:paknesil/constants.dart';
import 'package:paknesil/models/our_status.dart';
import 'package:paknesil/reponsive.dart';

class StatusInfoCard extends StatelessWidget {
  const StatusInfoCard({
    Key? key,
    required this.info,
  }) : super(key: key);
  final OurStatusModel info;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefPad),
      margin: EdgeInsets.all(kDefPad),
      decoration: BoxDecoration(
        color: kTextColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            info.iconData,
            size: Responsive.isDesktop(context) ? 50 : 25,
            color: Colors.white,
          ),
          Text(
            info.count.toString(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.yellow,
              fontSize: Responsive.isDesktop(context) ? 38 : 30,
            ),
          ),
          Text(
            info.title,
            style: TextStyle(
              color: Colors.white,
              fontSize: Responsive.isDesktop(context) ? 18 : 10,
            ),
          ),
        ],
      ),
    );
  }
}
