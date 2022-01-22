import 'package:flutter/material.dart';
import 'package:paknesil/components/appbar/app_bar.dart';
import 'package:paknesil/components/side_menu.dart';
import 'package:paknesil/controllers/MenuController.dart';
import 'package:paknesil/reponsive.dart';
import 'package:paknesil/screens/dashboard/components/carousel_slider.dart';
import 'package:paknesil/screens/dashboard/components/footer.dart';
import 'package:paknesil/screens/dashboard/components/our_status.dart';
import 'package:provider/provider.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
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
                children: [
                  if (Responsive.isDesktop(context))
                    Container(
                      child: Material(
                        child: TopBar(),
                        elevation: 0.0,
                      ),
                      height: 80,
                    ),
                  ImageCarousel(),
                  OurStatus(),
                  Footer(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
