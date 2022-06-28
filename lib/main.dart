import 'package:flutter/material.dart';
import 'view/imdb_view.dart';

void main() => runApp(const ImdbApp());

class ImdbApp extends StatelessWidget {
  const ImdbApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'IMDB',
        theme: ThemeData(
          listTileTheme: ListTileThemeData(
            textColor: Colors.blueGrey[700],
            contentPadding: const EdgeInsets.all(3),
          ),
        ),
        home: const ImdbView());
  }
}
