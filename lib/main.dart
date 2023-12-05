import 'package:flutter/material.dart';

void main() {
  runApp(const NetflixApp());
}

class NetflixApp extends StatelessWidget {
  const NetflixApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Netflix',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const NetflixLoginPage(),
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
            padding: EdgeInsets.only(right: 16.0),
            child: Text(
              "Help",
              style:
                  TextStyle(fontWeight: FontWeight.w700, color: Colors.white),
            ),
          ),
        ],
      ),
      body: Container(
        color: const Color.fromRGBO(22, 22, 22, 1.0),
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(children: [
              TextSpan(
                  style: TextStyle(
                    color: Color.fromRGBO(140, 140, 140, 1.0),
                  ),
                  text:
                      "Sign in is protected by Google reCAPTCHA to ensure that you are not a bot. "),
              TextSpan(
                text: "Learn more.",
                style: TextStyle(
                  color: Color.fromRGBO(140, 140, 140, 1.0),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

//
// import 'package:flutter/material.dart';
//
//
// void main(){
//   runApp(MyApp(),);
// }
//
// class MyApp extends StatelessWidget{
//
//   @override const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context){
//     return const MaterialApp(
//     );
//   }
// }
