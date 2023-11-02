import 'package:flutter/material.dart';
import 'package:home_style_book/home/home.dart';
import 'package:home_style_book/profile/profile.dart';
import 'package:home_style_book/rubbish/rubbish.dart';
import 'package:home_style_book/settings/settings.dart';

class DownloadPage extends StatelessWidget {
  const DownloadPage({super.key});

  static const route = "/download";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Download Page 🔺"),
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            
            const Text(
              " Downloading things \n- Telegram \n- Instagram \n- Whatsup ",
              style: TextStyle(
                fontFamily: "PlaypenSans",
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.green,
                fontStyle: FontStyle.italic,
                letterSpacing: 0.1,
                wordSpacing: 12,
                decoration: TextDecoration.underline,
                decorationColor: Colors.red,
                decorationStyle: TextDecorationStyle.wavy,
                overflow: TextOverflow.fade,
              ),
            ),
            Image.asset("assets/image/tg.png",width: 100,height: 100,),
            Image.asset("assets/image/insta.jpg",width: 100,height: 100,),
            Image.asset("assets/image/up.png",width: 100,height: 100,),
            
            const Text("VAXOB_BOY",
                style: TextStyle(
                fontFamily: "PlaypenSans",
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 4, 82, 7),
                fontStyle: FontStyle.italic,
                letterSpacing: 0.1,
                wordSpacing: 12,
                decoration: TextDecoration.underline,
                decorationColor: Colors.blue,
                decorationStyle: TextDecorationStyle.dashed,
                overflow: TextOverflow.fade,
              ),),
            
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [

          FloatingActionButton(
            heroTag: "aq",
            backgroundColor: Colors.red,
            onPressed: () {
              debugPrint("O'tkazishdan Oldin");

              Navigator.pushNamed(context, HomePage.route);
              debugPrint("O'tkazishdan keyin");
            },
            child: const Icon(Icons.home),
          ),
          const SizedBox(height: 10,),

          FloatingActionButton(
            heroTag: "aer",
            backgroundColor: Colors.yellow,
            onPressed: () {
              debugPrint("O'tkazishdan Oldin");

              Navigator.pushNamed(context, ProfilePage.route);
              debugPrint("O'tkazishdan keyin");
            },
            child: const Icon(Icons.account_circle),
          ),
          const SizedBox(height: 10),

          FloatingActionButton(
            heroTag: "art",
            backgroundColor: Colors.black,
            onPressed: () {
              debugPrint("O'tkazishdan Oldin");

              Navigator.pushNamed(context, DownloadPage.route);
              debugPrint("O'tkazishdan keyin");
            },
            child: const Icon(Icons.download,color: Colors.white,),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            heroTag: "aty",
            backgroundColor: Colors.green,
            onPressed: () {
              debugPrint("O'tkazishdan Oldin");

              Navigator.pushNamed(context, SettingPage.route);
              debugPrint("O'tkazishdan keyin");
            },
            child: const Icon(Icons.settings),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            heroTag: "ayu",
            backgroundColor: Colors.pink,
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
