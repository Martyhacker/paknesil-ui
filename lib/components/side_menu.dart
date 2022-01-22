import 'package:flutter/material.dart';
import 'package:paknesil/constants.dart';
import 'package:paknesil/models/appbar_buttons.dart';
import 'package:qlevar_router/qlevar_router.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            DrawerHeader(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/images/splash.png'),
                sideMenuLanguage()
              ],
            )),
            Column(
              children: List.generate(
                appBarButtons.length,
                (index) => DrawerListTile(
                    title: appBarButtons[index].btnTitle,
                    onTap: appBarButtons[index].destination),
              ),
            )
          ],
        ),
      ),
    );
  }

  Row sideMenuLanguage() {
    return Row(
      children: [
        InkWell(
          onTap: () {},
          child: Image.asset(
            'assets/images/flag/tm.png',
            width: 32,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        InkWell(
          onTap: () {},
          child: Image.asset(
            'assets/images/flag/ru.png',
            width: 32,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        InkWell(
          onTap: () {},
          child: Image.asset(
            'assets/images/flag/us.png',
            width: 32,
          ),
        ),
      ],
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({Key? key, required this.title, required this.onTap})
      : super(key: key);
  final String title;
  final String onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => QR.navigator.replaceAll(onTap),
      horizontalTitleGap: 0.0,
      title: Text(title, style: TextStyle(color: kTextColor)),
    );
  }
}
