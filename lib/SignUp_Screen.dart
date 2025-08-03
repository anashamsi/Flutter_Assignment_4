import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool _ischecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
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
                  'Sign Up',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Create an new account',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                SizedBox(height: 40),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'User Name',
                      style: TextStyle(fontWeight: FontWeight.bold, height: .5),
                    ),

                    TextField(
                      textAlignVertical: TextAlignVertical.bottom,

                      decoration: InputDecoration(
                        isDense: true,
                        suffixIcon: Icon(Icons.verified, color: Colors.black),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Email',
                      style: TextStyle(fontWeight: FontWeight.bold, height: .5),
                    ),

                    TextField(
                      textAlignVertical: TextAlignVertical.bottom,

                      decoration: InputDecoration(isDense: true),
                    ),
                    SizedBox(height: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Password',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            height: .5,
                          ),
                        ),
                        TextField(
                          obscureText: true,
                          obscuringCharacter: '*',
                          textAlignVertical: TextAlignVertical.bottom,

                          decoration: InputDecoration(
                            isDense: true,
                            suffixIcon: Icon(
                              Icons.verified,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Confirm Password',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            height: .5,
                          ),
                        ),
                        TextField(
                          obscureText: true,
                          obscuringCharacter: '*',
                          textAlignVertical: TextAlignVertical.bottom,

                          decoration: InputDecoration(
                            isDense: true,
                            suffixIcon: Icon(
                              Icons.verified,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Transform.scale(
                          scale: .9,
                          child: Checkbox(
                            checkColor: Colors.white,
                            activeColor: Colors.black,

                            value: _ischecked,
                            onChanged: (bool? newValue) {
                              setState(() {
                                _ischecked = newValue ?? false;
                              });
                            },
                          ),
                        ),

                        Expanded(
                          child: Text(
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            'By creating an account you have to agree with our terms & condition.',
                            style: TextStyle(fontSize: 11, color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 30),
                TextButton(
                  onPressed: () {},
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
                SizedBox(height: 35),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
