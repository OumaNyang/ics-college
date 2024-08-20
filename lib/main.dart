 import 'package:flutter/material.dart';
import 'package:ics/screens/downloads_screen.dart';
import 'package:ics/screens/fees_structure_screen.dart';
import 'package:ics/screens/home_page_screen.dart';
import 'package:ics/screens/launch_screen.dart'; // Include if necessary
import 'package:ics/screens/messages_Screen.dart';
import 'package:ics/screens/students_screen.dart';
import 'package:ics/theme/app_theme.dart'; // Import your custom theme

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ICS Technical College',
   theme: ThemeData(
    fontFamily: 'Poppins',
    ),
       initialRoute: '/',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => LaunchScreen(), // Launch screen if needed
        '/home': (context) => HomePageScreen(),
        '/students': (context) => StudentsScreen(),
        '/messages': (context) => MessagesScreen(),
        '/downloads': (context) => DownloadsScreen(),
        '/fees_structure': (context) => FeesStructureScreen(),
       },
    );
  }
}
