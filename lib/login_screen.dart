import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:yt_login_page/custom_button.dart';
import 'package:yt_login_page/signing_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final hsize = MediaQuery.of(context).size.height * 1.0;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          SizedBox(
            height: 261.72,
            width: 405,
            child: Image.asset(fit: BoxFit.cover, "images/png.png"),
          ),
          const Positioned(
              top: 230,
              left: 70,
              child: Text(
                "Welcome back",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              )),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: hsize * 0.65,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xff48E481),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(43.0),
                        topRight: Radius.circular(43.0))),
                child: ListView(
                  padding: const EdgeInsets.all(20.0),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Email",
                          prefixIcon: const Icon(Icons.email),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(20.0)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Password",
                          prefixIcon: const Icon(Icons.lock),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(20.0)),
                        ),
                      ),
                    ),
                    const CustomButton(title: "Login")
                  ],
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have any account?"),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SigningScreen()));
                    },
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
