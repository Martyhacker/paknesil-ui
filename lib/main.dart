import 'package:flutter/material.dart';
import 'package:paknesil/controllers/MenuController.dart';
import 'package:provider/provider.dart';
import 'package:qlevar_router/qlevar_router.dart';
import 'package:url_strategy/url_strategy.dart';

import 'routes/AppRoutes.dart';

void main() {
  QR.settings.enableDebugLog = true;
  setPathUrlStrategy();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<MenuController>(
        create: (context) => MenuController())
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Pak Nesil HJ',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      //home: DashBoardScreen(),
      routeInformationParser: QRouteInformationParser(),
      routerDelegate: QRouterDelegate(AppRoutes().routes, withWebBar: true),
    );
  }
}
