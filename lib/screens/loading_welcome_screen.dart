// ignore_for_file: library_private_types_in_public_api

import 'dart:async';
import 'package:flutter/material.dart';
import 'home_page.dart';

class LoadingWelcomeScreen extends StatefulWidget {
  const LoadingWelcomeScreen({Key? key}) : super(key: key);

  @override
  _LoadingWelcomeScreenState createState() => _LoadingWelcomeScreenState();
}

class _LoadingWelcomeScreenState extends State<LoadingWelcomeScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();
    
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    
    _opacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeIn,
      ),
    );
    
    _controller.forward();
    
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F8), // Light gray-blue background
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: FadeTransition(
            opacity: _opacityAnimation,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo with a white background and gold border
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: const Color(0xFFD4AF37), // Gold color
                      width: 2,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFFAFD5E8).withOpacity(0.4), // Light blue shadow
                        blurRadius: 12,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Image.asset(
                    'assets/museum_logo.png',
                    width: 150,
                    height: 150,
                    fit: BoxFit.contain,
                    errorBuilder: (context, error, stackTrace) {
                      // ignore: avoid_print
                      print('Error loading image: $error');
                      return const Icon(
                        Icons.museum,
                        color: Color(0xFFAFD5E8), // Light blue icon
                        size: 90,
                      );
                    },
                  ),
                ),
                const SizedBox(height: 40),
                const Text(
                  'MUSEUM OF ISLAMIC ARTS',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                    color: Color(0xFF436380), // Dark blue-gray text
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: 40,
                  height: 1,
                  color: const Color(0xFFD4AF37), // Gold divider line
                ),
                const SizedBox(height: 20),
                const Text(
                  'Explore more than a millennium of art, design and culture of the Islamic world.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.4,
                    fontStyle: FontStyle.italic,
                    color: Color(0xFF6F8CA3), // Medium blue-gray text
                  ),
                ),
                const SizedBox(height: 50),
                const SizedBox(
                  width: 32,
                  height: 32,
                  child: CircularProgressIndicator(
                    strokeWidth: 3,
                    valueColor: AlwaysStoppedAnimation<Color>(Color(0xFFD4AF37)), // Gold spinner
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}