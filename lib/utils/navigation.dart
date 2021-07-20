import 'package:flutter/material.dart';

import '../ui/dashboard/dashboard.dart';
import 'navigation_routes.dart';

class NavigationUtils {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    var args = settings.arguments != null ? (settings.arguments as Map) : null;

    switch (settings.name) {
      case NavigationRoutes.routeDashBoard:
        return MaterialPageRoute(builder: (_) => DashboardScreen());

      default:
        return _errorRoute(" Coming soon...");
    }
  }

  static Route<dynamic> _errorRoute(String message) {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
          appBar: AppBar(title: Text('Error')),
          body: Center(child: Text(message)));
    });
  }

  static void pushReplacement(BuildContext context, String routeName,
      {Object? arguments}) {
    Navigator.of(context).pushReplacementNamed(routeName, arguments: arguments);
  }

  static Future<dynamic> push(BuildContext context, String routeName,
      {Object? arguments}) {
    return Navigator.of(context).pushNamed(routeName, arguments: arguments);
  }

  static void pop(BuildContext context, {dynamic args}) {
    Navigator.of(context).pop(args);
  }

  static void popUntil(BuildContext context, String routeName, {dynamic args}) {
    Navigator.popUntil(context, ModalRoute.withName(routeName));
  }

  static Future<dynamic> pushAndRemoveUntil(
      BuildContext context, String routeName,
      {Object? arguments}) {
    return Navigator.of(context).pushNamedAndRemoveUntil(
        routeName, (route) => false,
        arguments: arguments);
  }
}
