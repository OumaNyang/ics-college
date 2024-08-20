import 'package:flutter/material.dart';
  
class LaunchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds:5), () {
      Navigator.pushReplacementNamed(context, '/home');
    });

    return Scaffold(
 
      backgroundColor: Colors.amber,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/ics-logo.jpg', width: 150, height: 150),
            SizedBox(height: 20),
            Text(
              'ICS Technical College',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
