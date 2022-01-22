import 'package:flutter/material.dart';
class LanguagePopupItem extends StatelessWidget {
  const LanguagePopupItem(
      {Key? key,
      required this.flagUrl,
      required this.langName,
      required this.onTap})
      : super(key: key);
  final String flagUrl;
  final String langName;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 130,
        height: 50.0,
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.transparent,
              child: Image.asset(flagUrl),
            ),
            Container(
              padding: EdgeInsets.only(left: 05.0, top: 0.5),
              child: Text(langName),
            ),
          ],
        ),
      ),
    );
  }
}
