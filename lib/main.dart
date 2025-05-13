import 'package:flutter/material.dart';
import 'package:atividadeum/pages/return.dart';
import '../pages/home.dart';

void main() {
  runApp(const PageOne());
}

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Primeira Página',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
      ),
      home: const MyHomePage(title: 'Pedra, Papel e Tesoura'),
    );
  }
}


