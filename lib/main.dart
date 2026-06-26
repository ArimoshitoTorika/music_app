import 'dart:io';

import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'HomePage.dart';

void main() {
  runApp(
     MaterialApp(
        debugShowCheckedModeBanner: false,
        useInheritedMediaQuery: true,
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [Locale('en')],
        home: const loginPage(),
      ),
  );
}

class loginPage extends StatefulWidget {

  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _showError = false;
  void _goToHome() {
    String email = _emailController.text;
    String password = _passwordController.text;
    if(email.toLowerCase()=="admin" && password=="admin"){
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
      setState(() => _showError = false);
    }else{
      setState(() => _showError = true);
    };

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(        // ✅ removed MaterialApp from here
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.black, Colors.purple],
          ),
        ),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 150),
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  'assets/images/LOGO_BlackHole.png',
                  width: 200,
                  height: 200,
                ),
              ),
              SizedBox(height: 30),
              Text(
                "Welcome Back!",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              SizedBox(height: 20),
              Container(
                height: 60,
                width: 300,
                child: TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    label: Text(
                      "Email/Username",
                      style: TextStyle(color: Colors.white),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 60,
                width: 300,
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    label: Text(
                      "Password",
                      style: TextStyle(color: Colors.white),
                    ),

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Visibility(
                visible: _showError,
                child: Text(
                  'Invalid Credential',
                  style: TextStyle(color: Colors.red),
                ),
              ),
              SizedBox(height: 5),
              Container(
                height: 50,
                width: 100,
                child: TextButton(
                  onPressed: _goToHome,
                  style: TextButton.styleFrom(
                    shadowColor: Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                      side: BorderSide(color: Colors.white),
                    ),
                  ),
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}