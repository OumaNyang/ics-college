 import 'package:flutter/material.dart';
import '../navigation/bottomnav_screen.dart';

class DownloadsScreen extends StatefulWidget {
  @override
  State<DownloadsScreen> createState() => _DownloadsScreenState();
}

class _DownloadsScreenState extends State<DownloadsScreen> {
  int _selectedIndex = 3;  


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
        title: Text('Downloads'),
        backgroundColor: Color(0xFFFEC224),
        foregroundColor: Color(0xFF005a54), 
    centerTitle: true,
    automaticallyImplyLeading: false,
     ),



      backgroundColor: Colors.grey[200], // Grey background
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildCourseProspectusSection(),
            _buildOurNewsletterSection(),
            _buildGraduationBookSection(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }

  Widget _buildCourseProspectusSection() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      color: Colors.grey[300],
       child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Course Prospectus',
             style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xFF000000),
            ),
          ),
          SizedBox(height: 10),
          Text('Click here to view our course prospectus'),
          ElevatedButton(
            onPressed: () {
            },
            child: Text('Download'),
                    
            style: ElevatedButton.styleFrom(
              backgroundColor:Color(0xFFFEC224) ,
             foregroundColor: Color(0xFF005a54),
             ),
          ),
 
        ],
      ),
    );
  }

  Widget _buildOurNewsletterSection() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      color: Colors.grey[300],
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Our Newsletter',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1c302f),
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Enjoy our current and past newsletters to learn more about our college programs and the various milestones we have achieved.',
            style: TextStyle(fontSize: 16, color: Color(0xFF000000)),
          ),
          SizedBox(height: 10),
          Container(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3, // Number of cover cards
              itemBuilder: (context, index) {
                return Container(
                  width: 150,
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  decoration: BoxDecoration(
                    color: Color(0xFF1c302f),  
                    borderRadius: BorderRadius.circular(2),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 4,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      'Newsletter Cover',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              // Navigate to view more newsletters
            },
            child: Text('View More'),
                
            style: ElevatedButton.styleFrom(
              backgroundColor:Color(0xFFFEC224) ,
             foregroundColor: Color(0xFF005a54),

             ),
          ),
        ],
      ),
    );
  }

  Widget _buildGraduationBookSection() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      color: Colors.grey[300],
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Graduation Book',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xFF000000),
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Get a copy of our graduation books as you join us in celebrating our well-deserved graduands on their graduation ceremony.',
            style: TextStyle(fontSize: 16, color: Color(0xFF000000)),
          ),
          SizedBox(height: 10),
          Container(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3, // Number of graduation book cover cards
              itemBuilder: (context, index) {
                return Container(
                  width: 150,
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  decoration: BoxDecoration(
                    color: Color(0xFF1c302f) , // Dark green background
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 4,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Graduation Book Cover',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Year 2023',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                    
                  ),

                );
              },
            ),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              // Navigate to view more graduation books
            },
            child: Text('View More'),
            
            style: ElevatedButton.styleFrom(
              backgroundColor:Color(0xFFFEC224) ,
             foregroundColor: Color(0xFF005a54),

             ),
          ),
        ],
      ),
    );
  }
}
