import 'package:flutter/material.dart';
import 'package:purify/services/myan_num_converter.dart';

class CounterPage extends StatefulWidget {
  final String data;
  const CounterPage({super.key, required this.data});

  @override
  // ignore: library_private_types_in_public_api
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.data)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              // '$_counter - ပတ်',
              '${convertToMyanmarDigits(_counter)} - ပတ်',
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: 300,
              height: 300,
              child: FloatingActionButton(
                onPressed: _incrementCounter,
                shape: const CircleBorder(),
                child: const Icon(
                  Icons.circle_sharp,
                  size: 90,
                  color: Colors.amber,
                ),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: _resetCounter,
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.refresh),
                  SizedBox(width: 5),
                  Text('Reset'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
