import 'package:flutter/material.dart';
import 'card.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(primarySwatch: Colors.yellow),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Livros',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 255, 58, 137),
        ),
        body:  ListView(
           children: [CardLivro( 'A Hipótese do Amor',40,25),CardLivro('Não é Amor',24,2),CardLivro('O efeito Graham',18,0),CardLivro('Não é Amor',24,2),CardLivro('O efeito Graham',18,0),CardLivro('Não é Amor',24,2),CardLivro('O efeito Graham',18,0),CardLivro('Não é Amor',24,2),CardLivro('O efeito Graham',18,0),]),
      ),
    );
  }
}
