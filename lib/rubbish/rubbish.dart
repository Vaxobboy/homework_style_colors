import 'package:flutter/material.dart';
import 'package:home_style_book/download/download.dart';
import 'package:home_style_book/home/home.dart';
import 'package:home_style_book/profile/profile.dart';
import 'package:home_style_book/settings/settings.dart';


class RubbishPage extends StatelessWidget {
  const RubbishPage({super.key});

  static const route = "/rubbish";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rubbish Page  🕳"),
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            const Text("I'm Rubbish Page"),
            Image.asset("assets/image/img.jpg"),
            const Text("Quyosh — quyosh sistemasining markaziy jismi; Yerga eng yaqin joylashgan yulduz.Unda sistemaning 99,866 % massasi (Mo=1,99T033g) joylashgan. Quyosh qizigan plazmali shardan iborat.",
            style: TextStyle(
                fontFamily: "PlaypenSans",
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.blue,
                fontStyle: FontStyle.italic,
                letterSpacing: 0.1,
                wordSpacing: 12,
                decoration: TextDecoration.underline,
                decorationColor: Colors.yellow,
                decorationStyle: TextDecorationStyle.wavy,
                overflow: TextOverflow.fade,
              ),),
          ],
        ),
      ),



            floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "az",
              backgroundColor: Colors.red,
              onPressed: () {
                debugPrint("O'tkazishdan Oldin");

                Navigator.pushNamed(context, HomePage.route);
                debugPrint("O'tkazishdan keyin");
              },
              child: const Icon(Icons.home),
          ),
          const SizedBox(height: 10),


          FloatingActionButton(
            heroTag: "ax",
              backgroundColor: const Color.fromARGB(255, 207, 226, 82),
              onPressed: () {
                debugPrint("O'tkazishdan Oldin");

                Navigator.pushNamed(context, ProfilePage.route);
                debugPrint("O'tkazishdan keyin");
              },
              child: const Icon(Icons.account_circle),
          ),
          const SizedBox(height: 10),

  
          FloatingActionButton(
            heroTag: "ac",
              backgroundColor: const Color.fromARGB(255, 46, 204, 135),
              onPressed: () {
                debugPrint("O'tkazishdan Oldin");

                Navigator.pushNamed(context, DownloadPage.route);
                debugPrint("O'tkazishdan keyin");
              },
              child: const Icon(Icons.download),
          ),
          const SizedBox(height: 10),
          
          FloatingActionButton(
            heroTag: "av",
              backgroundColor: const Color.fromARGB(255, 111, 45, 210),
              onPressed: () {
                debugPrint("O'tkazishdan Oldin");

                Navigator.pushNamed(context, SettingPage.route);
                debugPrint("O'tkazishdan keyin");
              },
              child: const Icon(Icons.settings),
          ),
          const SizedBox(height: 10),

          FloatingActionButton(
            heroTag: "abb",
              backgroundColor:  Colors.black,
              onPressed: () {
                debugPrint("O'tkazishdan Oldin");

                Navigator.pushNamed(context, RubbishPage.route);
                debugPrint("O'tkazishdan keyin");
              },
              child: const Icon(Icons.app_blocking_rounded,color: Colors.white,),
          ),
          const SizedBox(height: 10),



        ],
      ),


    );
  }
}