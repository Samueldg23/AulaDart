import 'package:flutter/material.dart';

voidmain() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MainAppState();
  }
}

class _MainAppState extends State<MainApp> {
  int idm = 0;
  Widget img = Text("Flutter");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("App Flutter")),
        body: Center(
          child: Column(
            children: [
              Text("Bem-vindo ao Flutter!", style: TextStyle(fontSize: 24)),
              Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/1/17/Google-flutter-logo.png",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
