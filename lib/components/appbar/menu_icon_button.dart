import 'package:flutter/material.dart';
import 'package:paknesil/constants.dart';
import 'package:paknesil/controllers/MenuController.dart';
import 'package:provider/provider.dart';
class MenuIconButton extends StatelessWidget {
  const MenuIconButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kTextColor,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      margin: EdgeInsets.all(5),
      child: IconButton(
          onPressed: context.read<MenuController>().controlMenu,
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          )),
    );
  }
}