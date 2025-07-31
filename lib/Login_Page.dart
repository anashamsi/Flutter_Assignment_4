// import 'dart:nativewrappers/_internal/vm/lib/ffi_patch.dart';

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 60,
            child: Image.asset('assets/images/logo-01.png'),
          ),
          SizedBox(height: 20),
          Text(
            'Welcome!',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          SizedBox(height: 10),
          Text('Please login or sign up to continue our app'),
          SizedBox(height: 25),
          Text('Email', style: TextStyle(fontWeight: FontWeight.bold)),
          TextField(
            decoration: InputDecoration(
              isDense: true,
              hint: Text('Enter your email'),
            ),
          ),
          SizedBox(height: 10),
          Text('Password', style: TextStyle(fontWeight: FontWeight.bold)),
          TextField(
            decoration: InputDecoration(
              isDense: true,
              hint: Text('Enter your password'),
            ),
          ),
          SizedBox(height: 50),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(backgroundColor: Colors.black),
            child: Text(
              'Login',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 5),
          Text('or'),
          SizedBox(height: 5),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(backgroundColor: Colors.white),
            child: Text(
              'Continue with Google',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 5),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(backgroundColor: Colors.white),
            child: Text(
              'Continue with Apple',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
