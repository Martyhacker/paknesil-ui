// import 'dart:js';

// import 'package:flutter/material.dart';
// import 'package:paknesil/components/content_view.dart';
// import 'package:paknesil/components/custom_tab.dart';
// import 'package:paknesil/components/custom_tab_bar.dart';
// import 'package:paknesil/constants.dart';

// class DashBoardScreen extends StatefulWidget {
//   const DashBoardScreen({Key? key}) : super(key: key);

//   @override
//   _DashBoardScreenState createState() => _DashBoardScreenState();
// }

// class _DashBoardScreenState extends State<DashBoardScreen>
//     with SingleTickerProviderStateMixin {
//   var scaffoldKey = GlobalKey<ScaffoldState>();
//   double? screenWidth, screenHeight;

//   TabController? tabController;
//   List<ContentView> contentViews = [
//     ContentView(
//       tab: CustomTab(
//         title: 'Bas sahypa',
//       ),
//       content: contentContainer(Colors.green),
//     ),
//     ContentView(
//       tab: CustomTab(
//         title: 'Dersler',
//       ),
//       content: contentContainer(Colors.red),
//     ),
//     ContentView(
//       tab: CustomTab(
//         title: 'Biz barada',
//       ),
//       content: contentContainer(Colors.yellow),
//     ),
//   ];

//   @override
//   void initState() {
//     super.initState();
//     tabController = TabController(length: contentViews.length, vsync: this);
//   }

//   @override
//   Widget build(BuildContext context) {
//     screenHeight = MediaQuery.of(context).size.height;
//     screenWidth = MediaQuery.of(context).size.width;
//     return Scaffold(
//       backgroundColor: secondaryColor,
//       drawer: drawer(),
//       // appBar: AppBar(
//       //   title: Text('Pak Nesil HJ'),
//       // ),
//       body: LayoutBuilder(
//         builder: (context, constraints) {
//           if (constraints.maxWidth > 715) {
//             return desktopView();
//           } else {
//             return mobileView();
//           }
//         },
//       ),
//     );
//   }

//   Widget desktopView() {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.start,
//       crossAxisAlignment: CrossAxisAlignment.end,
//       children: [
//         CustomTabBar(
//           controller: tabController!,
//           tabs: contentViews.map((e) => e.tab).toList(),
//         ),
//         Container(
//           height: 400,
//           child: TabBarView(
//             children: contentViews.map((e) => e.content).toList(),
//             controller: tabController,
//           ),
//         )
//       ],
//     );
//   }

//   Widget mobileView() {
//     return Container(
//       width: screenWidth,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.end,
//         children: [
//           IconButton(
//               onPressed: () => scaffoldKey.currentState!.openEndDrawer(),
//               icon: Icon(
//                 Icons.menu_rounded,
//                 color: Colors.white,
//               ))
//         ],
//       ),
//     );
//   }

//   Widget drawer() {
//     return Drawer(
//       child: ListView(
//         children: contentViews
//             .map((e) => Container(
//                   child: ListTile(
//                     title: Text(e.tab.title),
//                     onTap: () {},
//                   ),
//                 ))
//             .toList(),
//       ),
//     );
//   }
// }

// Center contentContainer(Color color) {
//   return Center(
//     child: Container(
//       color: color,
//       width: 100,
//       height: 100,
//     ),
//   );
// }
