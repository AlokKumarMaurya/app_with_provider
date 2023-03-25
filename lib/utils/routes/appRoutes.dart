import 'package:app_with_provider/utils/routes/routesName.dart';
import 'package:app_with_provider/view/loginView.dart';
import 'package:flutter/material.dart';

import '../../view/homeView.dart';


class AppRoutes {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RoutesName.home:
        return MaterialPageRoute(builder: (BuildContext context) => const HomeView());
      case RoutesName.login:
        return MaterialPageRoute(builder: (BuildContext context) => const LoginView());
      default:
        return MaterialPageRoute(
            builder: (BuildContext context) => const Scaffold(
                  body: Center(
                    child: Text("data"),
                  ),
                ));
    }
  }
}
