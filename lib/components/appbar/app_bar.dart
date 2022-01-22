import 'package:flutter/material.dart';
import 'package:paknesil/constants.dart';
import 'package:paknesil/models/appbar_buttons.dart';
import 'package:paknesil/reponsive.dart';

import 'components/appbar_buttons.dart';
import 'components/language_popupitem.dart';

class TopBar extends StatefulWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  _TopBarState createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> with SingleTickerProviderStateMixin {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  double? screenWidth, screenHeight;
  String? valueChoose;
  final List dropLanguages = [
    ListTile(
        leading: Image.asset('assets/images/flag/tm.png'),
        title: Text('Turkmen')),
    ListTile(
        leading: Image.asset('assets/images/flag/ru.png'),
        title: Text('Russian')),
    ListTile(
        leading: Image.asset('assets/images/flag/us.png'),
        title: Text('English')),
  ];
  TabController? tabController;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: Responsive.isDesktop(context)
                ? EdgeInsets.all(kDefPad / 4)
                : EdgeInsets.all(kDefPad / 20),
            child: InkWell(
              radius: 25,
              onTap: () {},
              hoverColor: Colors.transparent,
              child: Image.asset('assets/images/splash_512.png',
                  height: Responsive.isDesktop(context) ? 512 : 50),
            ),
          ),
          Row(
            children: [
              Row(
                children: List.generate(
                    appBarButtons.length,
                    (index) => AppBarButton(
                        text: appBarButtons[index].btnTitle,
                        onTap: appBarButtons[index].destination)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      padding: EdgeInsets.all(kDefPad), child: _popupMenu()),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

Widget _popupMenu() {
  return PopupMenuButton<int>(
      tooltip: 'Dil',
      itemBuilder: (context) => [
            PopupMenuItem(
                value: 1,
                child: LanguagePopupItem(
                  langName: 'Turkmen',
                  flagUrl: 'assets/images/flag/tm.png',
                  onTap: () {},
                )),
            PopupMenuItem(
                value: 2,
                child: LanguagePopupItem(
                  langName: 'Russian',
                  flagUrl: 'assets/images/flag/ru.png',
                  onTap: () {},
                )),
            PopupMenuItem(
                value: 3,
                child: LanguagePopupItem(
                  langName: 'English',
                  flagUrl: 'assets/images/flag/us.png',
                  onTap: () {},
                )),
          ]);
}
