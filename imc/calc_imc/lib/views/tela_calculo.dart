import 'package:flutter/material.dart';

class TelaCalculo extends StatefulWidget {
  const TelaCalculo({super.key});
  
  @override
  State<TelaCalculo> createState() {
    return _TelaCalculoState();
  }
}

class _TelaCalculoState extends State<TelaCalculo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TelaCalculo()),
                );
              },
              child: const Text('Iniciar Cálculo'),
            ),
          ],
        ),
      ),
    );
  }
}