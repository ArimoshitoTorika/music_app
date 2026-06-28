import 'package:flutter/material.dart';
import 'package:music_app/HomePage.dart';
import 'HomePage.dart';
void main() {
  runApp(
    MaterialApp(debugShowCheckedModeBanner: false, home: const startUpPage()),
  );
}

class startUpPage extends StatefulWidget {
  const startUpPage({super.key});

  @override
  State<startUpPage> createState() => _startUpPageState();
}

class _startUpPageState extends State<startUpPage> {
  void initState(){
    super.initState();
    _navigateToHome();
  }
  void _navigateToHome() {
    Future.delayed(const Duration(seconds: 3), () {
      if(mounted){
        Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=> HomePage()),);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: Container(
          decoration: BoxDecoration(color: Colors.black87),
          child: Center(
            child: Image.asset('assets/images/spotify.png', width: 160),
          ),
        ),
      ),
    );
  }
}
