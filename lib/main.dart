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
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
            primary: const Color.fromRGBO(193, 52, 60, 1.0)),
        useMaterial3: true,
      ),
      home: const NetflixLoginPage(),
    );
  }
}

class NetflixLoginPage extends StatefulWidget {
  const NetflixLoginPage({super.key});

  @override
  State<NetflixLoginPage> createState() => _NetflixLoginPageState();
}

class _NetflixLoginPageState extends State<NetflixLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/images/nflogo.png",width: 100,),
        centerTitle: true,
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
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                style: const TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  hintText: "Email or Phone Number",
                  hintStyle: const TextStyle(
                    color: Color.fromRGBO(148, 148, 148, 1.0),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  fillColor: const Color.fromRGBO(51, 51, 51, 1.0),
                  filled: true,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const PasswordInputView(),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      backgroundColor: const Color.fromRGBO(193, 62, 50, 1.0),
                    ),
                    child: const Text("Sign In",style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),)),
              ),
              const SizedBox(
                height: 24,
              ),
              TextButton(onPressed: (){}, child:const Text("Recover Password",style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),)),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
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
            ],
          ),
        ),
      ),
    );
  }
}

class PasswordInputView extends StatefulWidget {
  const PasswordInputView({
    super.key,
  });

  @override
  State<PasswordInputView> createState() => _PasswordInputViewState();
}

class _PasswordInputViewState extends State<PasswordInputView> {
  bool isPasswordHidden = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        color: const Color.fromRGBO(51, 51, 51, 1.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                style: const TextStyle(
                  color: Colors.white,
                ),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: "Password",
                  hintStyle: TextStyle(
                    color: Color.fromRGBO(148, 148, 148, 1.0),
                  ),
                ),
                obscureText: isPasswordHidden,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isPasswordHidden = !isPasswordHidden;
                });
              },
              child: Text(
                (isPasswordHidden) ? "SHOW" : "HIDE",
                style: const TextStyle(
                  color: Color.fromRGBO(148, 148, 148, 1.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
