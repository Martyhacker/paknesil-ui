import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:paknesil/components/appbar/menu_icon_button.dart';
import 'package:paknesil/constants.dart';
import 'package:paknesil/reponsive.dart';

class ImageCarousel extends StatefulWidget {
  const ImageCarousel({Key? key}) : super(key: key);

  @override
  _ImageCarouselState createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  final CarouselController _controller = CarouselController();
  int _current = 0;
  AlignmentGeometry alignment = Alignment.center;
  final List carouselImages = [
    'assets/images/slide1.jpg',
    'assets/images/slide2.jpg',
    'assets/images/slide3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: GridView.count(
        crossAxisCount: 1,
        childAspectRatio: 2.5,
        crossAxisSpacing: 0,
        mainAxisSpacing: 0,
        shrinkWrap: true,
        children: [
          Stack(
            fit: StackFit.expand,
            children: [
              mySlider(size),
              if (!Responsive.isDesktop(context))
                Positioned(
                  right: 0,
                  child: MenuIconButton(),
                ),
              Positioned(left: 0, bottom: 0, top: 0, child: ourSlogan()),
              sliderIndicators(context),
            ],
          ),
        ],
      ),
    );
  }

  Positioned sliderIndicators(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 0,
      left: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: carouselImages
            .asMap()
            .entries
            .map((e) => GestureDetector(
                  onTap: () => _controller.animateToPage(e.key),
                  child: Container(
                    width: 12,
                    height: 12,
                    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: (Theme.of(context).brightness == Brightness.dark
                                ? Colors.white
                                : Colors.black)
                            .withOpacity(_current == e.key ? 0.9 : 0.4)),
                  ),
                ))
            .toList(),
      ),
    );
  }

  Container ourSlogan() {
    return Container(
      margin: EdgeInsets.all(kDefPad),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AnimatedTextKit(
            repeatForever: true,
            animatedTexts: [
              RotateAnimatedText(
                'Biz tapawutly\nçemeleşýäris!',
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: Responsive.isDesktop(context) ? 80 : 30,
                  fontWeight: FontWeight.w900,
                ),
              ),
              RotateAnimatedText(
                'We make\n difference',
                textAlign: TextAlign.center,
                textStyle: TextStyle(
                  color: Colors.white,
                  textBaseline: TextBaseline.alphabetic,
                  fontSize: Responsive.isDesktop(context) ? 80 : 30,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }

  CarouselSlider mySlider(Size size) {
    return CarouselSlider(
      carouselController: _controller,
      items: carouselImages
          .map((e) => Container(
                child: Center(
                  child: Image.asset(
                    e,
                    fit: BoxFit.cover,
                    width: size.width,
                    height: size.height,
                  ),
                ),
              ))
          .toList(),
      options: CarouselOptions(
          autoPlay: true,
          autoPlayAnimationDuration: Duration(milliseconds: 1000),
          autoPlayCurve: Curves.fastOutSlowIn,
          scrollDirection: Axis.horizontal,
          viewportFraction: 1,
          onPageChanged: (index, reason) {
            setState(() {
              _current = index;
            });
          }),
    );
  }
}


