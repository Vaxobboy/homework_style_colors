import 'package:flutter/material.dart';
import 'package:home_style_book/download/download.dart';
import 'package:home_style_book/home/home.dart';
import 'package:home_style_book/profile/profile.dart';
import 'package:home_style_book/rubbish/rubbish.dart';
import 'package:home_style_book/settings/settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      initialRoute: HomePage.route,
      routes: {
        HomePage.route: (context) => const HomePage(),
        ProfilePage.route: (context) => const ProfilePage(),
        // ignore: equal_keys_in_map
        DownloadPage.route: (context) => const DownloadPage(),
        SettingPage.route: (context) => const SettingPage(),
        // ignore: equal_keys_in_map
        RubbishPage.route: (context) => const RubbishPage(),
   
      },
    );
  }
}