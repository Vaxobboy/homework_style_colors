import 'package:flutter/material.dart';
import 'package:home_style_book/download/download.dart';
import 'package:home_style_book/profile/profile.dart';
import 'package:home_style_book/rubbish/rubbish.dart';
import 'package:home_style_book/settings/settings.dart';



class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const route = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page 🏠"),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset("assets/image/book.jpg",height: 500,),         
          ],
        ),
      ),



      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "a",
              backgroundColor: const Color.fromARGB(255, 0, 0, 0),
              onPressed: () {
                debugPrint("O'tkazishdan Oldin");

                Navigator.pushNamed(context, HomePage.route);
                debugPrint("O'tkazishdan keyin");
              },
              child: const Icon(Icons.home,color: Colors.white,),
          ),
          const SizedBox(height: 10),


          FloatingActionButton(
            heroTag: "aa",
              backgroundColor: Color.fromARGB(255, 207, 226, 82),
              onPressed: () {
                debugPrint("O'tkazishdan Oldin");

                Navigator.pushNamed(context, ProfilePage.route);
                debugPrint("O'tkazishdan keyin");
              },
              child: const Icon(Icons.account_circle),
          ),
          const SizedBox(height: 10),

  
          FloatingActionButton(
            heroTag: "aaa",
              backgroundColor: Color.fromARGB(255, 46, 204, 135),
              onPressed: () {
                debugPrint("O'tkazishdan Oldin");

                Navigator.pushNamed(context, DownloadPage.route);
                debugPrint("O'tkazishdan keyin");
              },
              child: const Icon(Icons.download),
          ),
          const SizedBox(height: 10),
          
          FloatingActionButton(
            heroTag: "aaaa",
              backgroundColor: Color.fromARGB(255, 111, 45, 210),
              onPressed: () {
                debugPrint("O'tkazishdan Oldin");

                Navigator.pushNamed(context, SettingPage.route);
                debugPrint("O'tkazishdan keyin");
              },
              child: const Icon(Icons.settings),
          ),
          const SizedBox(height: 10),

          FloatingActionButton(
            heroTag: "ab",
              backgroundColor: Color.fromARGB(255, 227, 92, 236),
              onPressed: () {
                debugPrint("O'tkazishdan Oldin");

                Navigator.pushNamed(context, RubbishPage.route);
                debugPrint("O'tkazishdan keyin");
              },
              child: const Icon(Icons.app_blocking_rounded),
          ),
          const SizedBox(height: 10),



        ],
      ),



    );
  }
}