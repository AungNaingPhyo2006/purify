import 'package:flutter/material.dart';
import 'package:purify/models/sutta_data.dart';
import 'package:purify/screens/sutta_detail.dart';

class ChantingPage extends StatelessWidget {
  final String data;
  const ChantingPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(data)),
      body: ListView.builder(
          itemCount: suttas.length,
          itemBuilder: (context, index) {
            final sutta = suttas[index];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SuttaDetailScreen(sutta: sutta),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    vertical: 6.0,
                  ),
                  textStyle: const TextStyle(fontSize: 18),
                ),
                child: Text(sutta.name),
              ),
            );
          }),
    );
  }
}
