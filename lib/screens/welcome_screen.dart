import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A8F9B),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 40),
            // Header
            const Text(
              'medinow',
              style: TextStyle(
                fontSize: 38,
                fontWeight: FontWeight.w900,
                color: Colors.white,
                letterSpacing: 1.5,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Meditate With Us!',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.white,
                letterSpacing: 0.5,
              ),
            ),
            const SizedBox(height: 40),
            // Buttons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 54,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: const Text(
                        'Sign in with Apple',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    height: 54,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF7DEBE5),
                        foregroundColor: Colors.black,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: const Text(
                        'Continue with Email or Phone',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                    ),
                    child: const Text(
                      'Continue With Google',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            // Bottom Illustration from assets
            SizedBox(
              width: double.infinity,
              child: Image.asset(
                'assets/first.png',
                fit: BoxFit.fitWidth,
                alignment: Alignment.bottomCenter,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
