import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacer(),
          Column(
            children: [
              Icon(
                Icons.check_circle_outline,
                size: 70,
                color: Colors.lightGreen,
              ),
              SizedBox(height: 30),
              Text(
                'Successful!',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  'You have successfully register in our app and start working in it.',
                  style: TextStyle(color: Colors.black54, fontSize: 15),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          Spacer(),
          shopping_button(),
          SizedBox(height: 70),
        ],
      ),
    );
  }
}

Widget shopping_button() {
  return Row(
    children: [
      Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              backgroundColor: Colors.black,
              overlayColor: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                'Start Shopping',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ),
      ),
    ],
  );
}
