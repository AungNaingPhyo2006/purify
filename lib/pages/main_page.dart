import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(""),
        backgroundColor: Colors.lightBlue,
      ),
      backgroundColor: Colors.lightBlue,
      body: Center(
          child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "သုခီ အတ္တာနံ ပရိဟရန္တု",
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(
                '/chanting',
                arguments: 'ပရိတ် တရားတော်များ',
              );
            },
            child: const Text(
              "ပရိတ် တရားတော်များ",
              style: TextStyle(color: Colors.brown),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  '/counter',
                  arguments: 'ပုတီး စိပ်ရန်',
                );
              },
              child: const Text(
                "စိပ်ပုတီး စိပ်ရန် နေရာ",
                style: TextStyle(color: Colors.brown),
              ))
        ],
      )),
    );
  }
}
