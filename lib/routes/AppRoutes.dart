import 'package:paknesil/screens/aboutus/aboutus_screen.dart';
import 'package:paknesil/screens/dashboard/dashboard_screen.dart';
import 'package:qlevar_router/qlevar_router.dart';

class AppRoutes {
  static String homePage = "Home Page";
  static String newsPage = "Tazelikler";
  static String coursesPage = "Kurslar";
  static String galeryPage = "Galereya";
  static String aboutusPage = "Biz barada";
  static String contactPage = "Habarlasmak";
  static String branchesPage = "Sahamcalar";

  final routes = [
    QRoute(path: '/', builder: ()=>DashBoardScreen(), name: homePage),
    QRoute(path: '/about', builder: ()=>AboutUsScreen(), name: aboutusPage),
  ];
}
