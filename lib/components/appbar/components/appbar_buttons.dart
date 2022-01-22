import 'package:flutter/material.dart';
import 'package:paknesil/constants.dart';
import 'package:qlevar_router/qlevar_router.dart';

class AppBarButton extends StatelessWidget {
  const AppBarButton({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);
  final String text;
  final String onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        style: ElevatedButton.styleFrom(
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(0.0)),
          padding: EdgeInsets.all(kDefPad),
        ),
        onPressed: () {
          // Navigator.push(
          //     context, MaterialPageRoute(builder: (context) => onTap));
          QR.navigator.replaceAll(onTap);
        },
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: kDefPad / 2, right: kDefPad),
              child: Text(text,
                  style: TextStyle(
                      color: kTextColor, fontWeight: FontWeight.w600)),
            ),
          ],
        ),
      ),
    );
  }
}
