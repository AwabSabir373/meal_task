import 'package:get/get.dart';
import 'package:meal_task/ui/cart_screen.dart';
import 'package:meal_task/ui/splach.dart';
import 'package:meal_task/values/routes_named.dart';

import '../ui/home_screen.dart';

class Routes{
  Routes._();
 static List<GetPage<dynamic>>  routesList= [
    GetPage(name: '/', page: () => const Splac()),
    GetPage(name: NamedRoutes.home, page: () => const HomeScreen()),
    GetPage(name: NamedRoutes.cartScreen, page: () =>  CartScreen()),
  ];
}
