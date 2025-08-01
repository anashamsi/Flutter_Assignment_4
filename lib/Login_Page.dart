// import 'dart:nativewrappers/_internal/vm/lib/ffi_patch.dart';

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            Center(
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 80,
                child: Image.asset('assets/images/logo-01.png'),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Welcome!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Please login or sign up to continue our app',
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
            SizedBox(height: 40),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Email',
                  style: TextStyle(fontWeight: FontWeight.bold, height: .5),
                ),

                TextField(
                  decoration: InputDecoration(
                    // hintText: 'Enter your email',
                    isDense: true,
                    suffixIcon: Icon(Icons.verified),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Password',
                  style: TextStyle(fontWeight: FontWeight.bold, height: .5),
                ),
                TextField(
                  decoration: InputDecoration(
                    // hintText: 'Enter your password',
                    isDense: true,
                    suffixIcon: Icon(Icons.verified),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(backgroundColor: Colors.black),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 5),
            Center(
              child: Text('or', style: TextStyle(color: Colors.grey)),
            ),
            SizedBox(height: 5),
            TextButton.icon(
              icon: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.white,
                child: Image.asset(
                  'assets/images/google-logo.png',
                  fit: BoxFit.cover,
                ),
              ),
              onPressed: () {},
              style: TextButton.styleFrom(backgroundColor: Colors.white),
              label: Text(
                ' Continue with Google',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),

            SizedBox(height: 5),
            TextButton.icon(
              icon: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.white,
                child: Image.asset(
                  'assets/images/apple-logo.png',
                  fit: BoxFit.cover,
                ),
              ),
              onPressed: () {},
              style: TextButton.styleFrom(backgroundColor: Colors.white),
              label: Text(
                ' Continue with Apple',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
