import 'package:flutter/material.dart';
import 'package:home_style_book/download/download.dart';
import 'package:home_style_book/home/home.dart';
import 'package:home_style_book/profile/profile.dart';
import 'package:home_style_book/rubbish/rubbish.dart';



class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  static const route = "/settings";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        // For things inside the AppBar ⇣
        foregroundColor: Color.fromARGB(255, 222, 24, 24),
       
        shadowColor: Colors.black,
        elevation: 10,
        
                leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text("Settings Page ⚙️"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Image.asset("assets/image/info-dumpster-garbage.webp"),
              Image.asset("assets/image/images.png"),
      const Text("This pictures are moved to garbage from your proffile",
        style: TextStyle(
                fontFamily: "PlaypenSans",
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.brown,
                fontStyle: FontStyle.italic,
                letterSpacing:0.1,
                wordSpacing: 12,
                decoration: TextDecoration.underline,
                decorationColor: Colors.green,
                decorationStyle: TextDecorationStyle.dotted,
                overflow: TextOverflow.fade,
              ),),
          ],
        ),
      ),

floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "aui",
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
            heroTag: "aio",
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
            heroTag: "aop",
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
            heroTag: "ap",
              backgroundColor: Colors.black,
              onPressed: () {
                debugPrint("O'tkazishdan Oldin");

                Navigator.pushNamed(context, SettingPage.route);
                debugPrint("O'tkazishdan keyin");
              },
              child: const Icon(Icons.settings,color: Colors.white,),
          ),
          const SizedBox(height: 10),

          FloatingActionButton(
            heroTag: "asd",
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