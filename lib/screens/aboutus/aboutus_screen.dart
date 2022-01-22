import 'package:flutter/material.dart';
import 'package:paknesil/components/appbar/app_bar.dart';
import 'package:paknesil/components/side_menu.dart';
import 'package:paknesil/constants.dart';
import 'package:paknesil/controllers/MenuController.dart';
import 'package:paknesil/reponsive.dart';
import 'package:paknesil/screens/dashboard/components/footer.dart';
import 'package:provider/provider.dart';
import 'package:paknesil/contents.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: (Responsive.isMobile(context) || Responsive.isTablet(context))
          ? SideMenu()
          : null,
      key: context.read<MenuController>().scaffoldKey,
      body: Container(
        height: size.height,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  if (Responsive.isDesktop(context))
                    Container(
                      child: Material(
                        child: TopBar(),
                        elevation: 0.0,
                      ),
                      height: 80,
                    ),
                  contentText(),
                  Footer(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container contentText() {
    return Container(
        padding: EdgeInsets.all(kDefPad * 2),
        margin: EdgeInsets.all(kDefPad * 3),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(25),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ]),
        child: Text(kAboutUs, style: TextStyle(fontSize: kSimpleTextSize)));
  }
}
