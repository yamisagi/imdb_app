import 'package:flutter/material.dart';

void main() => runApp(const ImdbApp());

class ImdbApp extends StatelessWidget {
  const ImdbApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'IMDB',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('IMDB'),
          ),
          body: const Center(
            child: Text('Hello World'),
          ),
        ));
  }
}
