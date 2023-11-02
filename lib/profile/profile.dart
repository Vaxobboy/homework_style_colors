import 'package:flutter/material.dart';
import 'package:home_style_book/download/download.dart';
import 'package:home_style_book/home/home.dart';
import 'package:home_style_book/rubbish/rubbish.dart';
import 'package:home_style_book/settings/settings.dart';



class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  static const route = "/profile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text("Proffile Page 👨🏻‍💻"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/image/photo.jpg",width: 300,height: 300,),
            const Text("Hamzayev Vaxobjon\n15 yosh\nToshkent shahar, Sergeli tumani",  style: TextStyle(
                // fontFamily: "PlaypenSans",
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.teal ,
                fontStyle: FontStyle.italic,
                letterSpacing:0.1,
                wordSpacing: 12,
                decoration: TextDecoration.underline,
                decorationColor: Colors.blue ,
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
                  heroTag: 'aas',
            backgroundColor: Colors.green[100],
              child: const Icon(Icons.home),
              onPressed: () {
                debugPrint("O'tkazishdan Oldin");
                Navigator.pushReplacement(
                    context,
                  MaterialPageRoute(
                      builder: (context) => const HomePage(),
                  ),
                );
              }
          ),

           const SizedBox(height: 10),
              FloatingActionButton(
                heroTag: 'd',
            backgroundColor: Colors.black,
              child: const Icon(Icons.account_circle_outlined,color: Colors.white,),
              onPressed: () {
                debugPrint("O'tkazishdan Oldin");
                Navigator.pushReplacement(
                    context,
                  MaterialPageRoute(
                      builder: (context) => const ProfilePage(),
                  ),
                );
              }
          ),
 const SizedBox(height: 10),
                          FloatingActionButton(
                            heroTag: "g",
            backgroundColor: Colors.indigoAccent,
              child: const Icon(Icons.download,color: Colors.white,),
              onPressed: () {
                debugPrint("O'tkazishdan Oldin");
                Navigator.pushReplacement(
                    context,
                  MaterialPageRoute(
                      builder: (context) => const DownloadPage(),
                  ),
                );
              }
          ),
 const SizedBox(height: 10),
                          FloatingActionButton(
                            heroTag: "r",
            backgroundColor: Colors.blue[100],
              child: const Icon(Icons.settings),
              onPressed: () {
                debugPrint("O'tkazishdan Oldin");
                Navigator.pushReplacement(
                    context,
                  MaterialPageRoute(
                      builder: (context) => const SettingPage(),
                  ),
                );
              }
          ),
 const SizedBox(height: 10),

                          FloatingActionButton(
                            heroTag: "rr",
            backgroundColor: Colors.brown[100],
              child: const Icon(Icons.app_blocking_rounded),
              onPressed: () {
                debugPrint("O'tkazishdan Oldin");
                Navigator.pushReplacement(
                    context,
                  MaterialPageRoute(
                      builder: (context) => const RubbishPage(),
                  ),
                );
              }
          )

                ],
      ),
    );
  }
} 