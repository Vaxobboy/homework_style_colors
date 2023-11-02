import 'package:flutter/material.dart';
import 'package:home_style_book/home/home.dart';




class ComplaintPage extends StatelessWidget {
  const ComplaintPage({super.key});

  static const route = "/complaint";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" 🏠"),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("I'm Home Page"),
            
          ],
        ),
      ),



      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          FloatingActionButton(
            heroTag: "a",
              backgroundColor: Colors.red,
              onPressed: () {
                debugPrint("O'tkazishdan Oldin");
                print("Home Page qismini to'g'irlaymiz,arizangiz uchun raxmat");
                debugPrint("O'tkazishdan keyin");
              },
              child: const Icon(Icons.home),
          ),
          const SizedBox(height: 10),


          FloatingActionButton(
            heroTag: "a",
              backgroundColor: Colors.red,
              onPressed: () {
                debugPrint("O'tkazishdan Oldin");
                print("Profile Page qismini to'g'irlaymiz,arizangiz uchun raxmat");
                debugPrint("O'tkazishdan keyin");
              },
              child: const Icon(Icons.account_circle),
          ),
          const SizedBox(height: 10),

  
          FloatingActionButton(
            heroTag: "a",
              backgroundColor: Colors.red,
              onPressed: () {
                debugPrint("O'tkazishdan Oldin");
                print("Download Page qismini to'g'irlaymiz,arizangiz uchun raxmat");
                debugPrint("O'tkazishdan keyin");
              },
              child: const Icon(Icons.download),
          ),
          const SizedBox(height: 10),
          

          FloatingActionButton(
            heroTag: "a",
              backgroundColor: Colors.red,
              onPressed: () {
                debugPrint("O'tkazishdan Oldin");
              print("Settings Page qismini to'g'irlaymiz,arizangiz uchun raxmat");
                debugPrint("O'tkazishdan keyin");
              },
              child: const Icon(Icons.settings),
          ),
          const SizedBox(height: 10),

          FloatingActionButton(
            heroTag: "a",
              backgroundColor: Colors.red,
              onPressed: () {
                debugPrint("O'tkazishdan Oldin");
                print("Rubbish Page qismini to'g'irlaymiz,arizangiz uchun raxmat");
                debugPrint("O'tkazishdan keyin");
              },
              child: const Icon(Icons.app_blocking_rounded),
          ),
          const SizedBox(height: 10),

          FloatingActionButton(
            heroTag: "b",
            backgroundColor: Colors.blue,
              child: const Icon(Icons.gpp_good),
              onPressed: () {
                debugPrint("O'tkazishdan Oldin");
                Navigator.push(
                    context,
                  MaterialPageRoute(
                      builder: (context) => const HomePage(),
                  ),
                );
              }
          )
        ],
      ),
    );
  }
}