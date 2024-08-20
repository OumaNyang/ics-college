import 'package:flutter/material.dart';

import '../navigation/bottomnav_screen.dart';

class StudentsScreen extends StatefulWidget {
  @override
  State<StudentsScreen> createState() => _StudentsScreenState();
}

class _StudentsScreenState extends State<StudentsScreen> {
    int _selectedIndex = 1; 
    
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/home');
        break;
      case 1:
        Navigator.pushNamed(context, '/students');
        break;
      case 2:
        Navigator.pushNamed(context, '/Students');
        break;
      case 3:
        Navigator.pushNamed(context, '/downloads');
        break;
      case 4:
        Navigator.pushNamed(context, '/fees_structure');
        break;
      default:
        Navigator.pushNamed(context, '/home');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Students'),
        backgroundColor: Color(0xFFFEC224),
        foregroundColor: Color(0xFF005a54), 
     centerTitle: true,
    automaticallyImplyLeading: false,

        ),
      body: Center(
        child: Center(child: Text('Students Content')),
      ),
           bottomNavigationBar: BottomNavBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
