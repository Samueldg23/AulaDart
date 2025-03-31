import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Aplicação'),
        backgroundColor: Color.fromRGBO(192, 27, 27, 1),
        ),
        body: Center(
          child: Container(
            color: Colors.amber[900],
            child: Image.asset('assets/Thumb-Logo-UniSales-Vertical.png'),
            width: 400,
            height: 400,
          )
        ),
      ),
    );
  }
}
