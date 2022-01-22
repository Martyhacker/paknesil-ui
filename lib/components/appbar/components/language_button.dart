import 'package:flutter/material.dart';
import 'package:paknesil/constants.dart';
class LanguageButton extends StatelessWidget {
  const LanguageButton({
    Key? key,
    required this.imageUrl,
    required this.onTap,
  }) : super(key: key);
  final String imageUrl;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefPad / 10),
      child: InkWell(
        onTap: onTap,
        child: CircleAvatar(
          radius: 18,
          child: Image.asset(imageUrl),
          backgroundColor: Colors.transparent,
        ),
      ),
    );
  }
}