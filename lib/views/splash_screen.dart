import 'package:flutter/material.dart';
import 'dart:async';
import 'admin_login_screen.dart';
class SplashScreen extends StatefulWidget {
  // Hapus const dari konstruktor
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    
    
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          // Hapus const dari konstruktor MaterialPageRoute
          builder: (context) => AdminLoginScreen(), 
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF5DAA80), 
      body: Center(
        child: Image.asset(
          'assets/images/logo.png',
          width: 300, 
          height: 300,
        ),
      ),
    );
  }
}