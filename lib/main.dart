import 'package:flutter/material.dart';

void main() {
  runApp(const NetflixApp());
}

class NetflixApp extends StatelessWidget {
  const NetflixApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Netflix PADC',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const NetflixApp(),
    );
  }
}

class NetflixLoginPage extends StatelessWidget {
  const NetflixLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const Icon(
          Icons.chevron_left_rounded,
          color: Colors.white,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Text(
              "Help",
              style:
                  TextStyle(fontWeight: FontWeight.w700, color: Colors.white),
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.black87,
      ),
    );
  }
}
