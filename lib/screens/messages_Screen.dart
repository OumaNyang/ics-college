import 'package:flutter/material.dart';
import '../navigation/bottomnav_screen.dart';

class MessagesScreen extends StatefulWidget {
  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
    int _selectedIndex = 2;  

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
        Navigator.pushNamed(context, '/messages');
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
        title: Text('Messages'),
        backgroundColor: Color(0xFFFEC224),
        foregroundColor: Color(0xFF005a54), 
    centerTitle: true,
    automaticallyImplyLeading: false,
     ),
      body: Center(
        child: Center(child: Text('Messages Content')),
      ),
           bottomNavigationBar: BottomNavBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        
      ),
    );
  }
}
