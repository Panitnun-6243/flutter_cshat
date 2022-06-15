import 'package:cs_chat/pages/login_page.dart';
import 'package:flutter/material.dart';

//Packages
import 'package:firebase_analytics/firebase_analytics.dart';

//Pages
import 'services/navigation_service.dart';
import './pages/splash_page.dart';

void main() {
  runApp(
    SplashPage(
        key: UniqueKey(),
        onInitializationComplete: () {
          runApp(const MainApp());
        }),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CShat',
      theme: ThemeData(
        backgroundColor: const Color.fromRGBO(36, 35, 49, 1.0),
        scaffoldBackgroundColor: const Color.fromRGBO(36, 35, 49, 1.0),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color.fromRGBO(30, 29, 37, 1.0),
        ),
      ),
      initialRoute: '/login',
      navigatorKey: NavigationService.navigatorKey,
      routes: {
        '/login': (BuildContext _context) => const LoginPage(),
      },
    );
  }
}
