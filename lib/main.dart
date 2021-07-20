import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'utils/app_config.dart';
import 'utils/navigation.dart';
import 'utils/navigation_routes.dart';

void main() {
  setEnvironment(Environment.dev);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // status bar color
    ));

    return MaterialApp(
      title: 'FlutterTestApp',
      debugShowCheckedModeBanner: false,
      initialRoute: NavigationRoutes.routeDashBoard,
      onGenerateRoute: NavigationUtils.generateRoute,
      theme: ThemeData(
        canvasColor: Colors.white,
        textTheme: GoogleFonts.asapTextTheme(
          Theme.of(context).textTheme,
        ),
        primaryColor: Colors.white,
      ),
    );
  }
}
