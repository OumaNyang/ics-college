//  import 'package:flutter/material.dart';

// class BottomNavBar extends StatelessWidget {
//   final int currentIndex;
//   final Function(int) onTap;

//   BottomNavBar({required this.currentIndex, required this.onTap});

//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       items: const <BottomNavigationBarItem>[
//         BottomNavigationBarItem(
//           icon: Icon(Icons.home),
//           label: 'Home',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.people),
//           label: 'Students',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.message),
//           label: 'Messages',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.file_download),
//           label: 'Downloads',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.monetization_on),
//           label: 'Fees Structure',
//         ),
//       ],
//       backgroundColor: Color(0xFF005a54), // Background color
//       currentIndex: currentIndex,
//       selectedItemColor: Color(0xFFfec224), // Active icon color
//       unselectedItemColor: Color(0xFFFFFFFF), // Inactive icon color
//       onTap: onTap,
//     );
//   }
// }
 
 import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  BottomNavBar({required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.people),
          label: 'Students',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.message),
          label: 'Messages',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.file_download),
          label: 'Downloads',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.monetization_on),
          label: 'Fees Structure',
        ),
      ],
      backgroundColor: Color(0xFF005a54), // Background color
      currentIndex: currentIndex,
      selectedItemColor: Color(0xFFfec224), // Active icon color
      unselectedItemColor: Color(0xFF005a54), // Inactive icon color
      selectedLabelStyle: TextStyle(
        fontWeight: FontWeight.bold,
      ), // Style for selected label
      unselectedLabelStyle: TextStyle(
        fontWeight: FontWeight.normal,
      ), // Style for unselected label
      elevation: 8, // Shadow effect
      onTap: onTap,
    );
  }
}

 
 