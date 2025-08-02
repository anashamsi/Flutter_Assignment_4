// import 'dart:nativewrappers/_internal/vm/lib/ffi_patch.dart';

import 'package:flutter/material.dart';

TextEditingController email_controller = TextEditingController();
TextEditingController password_controller = TextEditingController();

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: SingleChildScrollView(
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
                      textAlignVertical: TextAlignVertical.bottom,
                      controller: email_controller,
                      decoration: InputDecoration(
                        // hintText: 'Enter your email',
                        isDense: true,
                        suffixIcon: Icon(Icons.verified, color: Colors.black),
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
                      obscureText: true,
                      obscuringCharacter: '*',
                      textAlignVertical: TextAlignVertical.bottom,
                      controller: password_controller,
                      decoration: InputDecoration(
                        // hintText: 'Enter your password',
                        isDense: true,
                        suffixIcon: Icon(Icons.verified, color: Colors.black),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                TextButton(
                  onPressed: () {
                    var email = email_controller.text.toString();
                    print(email);
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.black,
                    overlayColor: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
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
                  icon: ClipOval(
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.transparent,
                      child: Image.asset(
                        'assets/images/google-logo.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  onPressed: () {},

                  style: TextButton.styleFrom(
                    overlayColor: Colors.black,
                    backgroundColor: Colors.white,
                    elevation: 3,
                    shadowColor: Colors.black,
                  ),
                  label: Text(
                    'Continue with Google',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),

                SizedBox(height: 10),
                TextButton.icon(
                  icon: ClipOval(
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.transparent,
                      child: Image.asset(
                        'assets/images/apple-logo.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    overlayColor: Colors.black,
                    backgroundColor: Colors.white,
                    elevation: 3,
                    shadowColor: Colors.black,
                  ),
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
        ),
      ),
    );
  }
}
