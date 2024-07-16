import 'package:flutter/material.dart';
import 'package:purify/models/sutta.dart';

class SuttaDetailScreen extends StatelessWidget {
  final Sutta sutta;
  const SuttaDetailScreen({super.key, required this.sutta});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(sutta.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'ရွတ်ဖတ်နည်း',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              ...sutta.history.map((his) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 3.0),
                    child: Text(
                      his,
                      style: const TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  )),
              const SizedBox(height: 32),
              const Text(
                'သုတ္တန် ပါဠိတော်',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              ...sutta.method.map((me) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6.0),
                  child: Text(
                    me,
                    textAlign: TextAlign.justify,
                    style: const TextStyle(fontSize: 18),
                  ))),
              // Text(sutta.method),
            ],
          ),
        ),
      ),
    );
  }
}
