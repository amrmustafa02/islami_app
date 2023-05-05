import 'package:flutter/material.dart';
import 'package:islami_app/ui/hates_tab/hates_content_screen.dart';
import 'package:islami_app/ui/home_screen/home_screen.dart';
import 'package:islami_app/ui/home_screen/splash_screen.dart';
import 'package:islami_app/ui/quarn_tab/sura_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      initialRoute: SplashScreen.routeName,

      theme: ThemeData(

          primaryColor: const Color(0xFFB7935F),

          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            selectedIconTheme: IconThemeData(size: 24),
            unselectedIconTheme: IconThemeData(size: 24),
              unselectedItemColor: Colors.white,
              selectedItemColor: Colors.black),

          scaffoldBackgroundColor: Colors.transparent,

          iconTheme: const IconThemeData(
            color: Colors.black,
          ),

          appBarTheme: const AppBarTheme(
              centerTitle: true,
              backgroundColor: Colors.transparent,
              elevation: 0,
              iconTheme: IconThemeData(color: Colors.black),
              titleTextStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontSize: 30))),

      routes: {
        SplashScreen.routeName: (_) => const SplashScreen(),
        HomeScreen.routeName: (_) =>  HomeScreen(),
        SuraScreen.routeName: (_) => SuraScreen(),
        HatesContentScreen.routeName: (_) => HatesContentScreen(),
      },
    );
  }
}
