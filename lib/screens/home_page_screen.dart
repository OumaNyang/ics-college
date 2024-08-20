import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../navigation/bottomnav_screen.dart';

class HomePageScreen extends StatefulWidget {
  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  int _selectedIndex = 0;  

  final List<Map<String, String>> branches = [
    {
      'name': 'Main Branch Stanbank House',
      'location':
          '3rd Floor, Moi Avenue, Near Tom Mboya Statue, Next to Kenya National Archives',
      'contacts': 'Call/WhatsApp/Text 0722 857455 OR 0728022700',
      'image': 'assets/images/placeholder-landscape-img.jpg'
    },
    {
      'name': 'MOMBASA BRANCH',
      'location':
          'Mombasa Trade Centre (Formerly Ambalal House), 3rd Floor, Nkurumah Road, Opp Electricity House, MOMBASA',
      'contacts': 'Tel: 0740 131917',
      'image': 'assets/images/placeholder-landscape-img.jpg'
    },
    {
      'name': 'ELDORET BRANCH',
      'location':
          'Tiryo Sugarland Plaza (Former Uchumi), 4th Floor, Oloo Street, Eldoret CBD',
      'contacts': 'Tel: 0743443460',
      'image': 'assets/images/placeholder-landscape-img.jpg'
    },
    {
      'name': 'NAKURU BRANCH',
      'location':
          'Tower One, 5th Floor, Moi Road, Next to Posta House, Nakuru CBD',
      'contacts': 'Tel: 0728077800',
      'image': 'assets/images/placeholder-landscape-img.jpg'
    },
    {
      'name': 'THIKA BRANCH',
      'location':
          'Thika Business Centre, 7th floor, Above Naivas Supermarket, Commercial Street, Thika Town',
      'contacts': 'Tel: 0798282255',
      'image': 'assets/images/placeholder-landscape-img.jpg'
    },
    // {
    //   'name': 'NYERI BRANCH',
    //   'location':
    //       'Kasturi Plaza, 1st floor, Next to Kenya Police Sacco, Kimathi Street, Nyeri Town',
    //   'contacts': 'Tel: 0700259656',
    //   'image': 'assets/images/placeholder-landscape-img.jpg'
    // },
    {
      'name': 'KISUMU BRANCH',
      'location':
          'Mega Plaza, 10th floor, Oginga Odinga Road, Opposite University of Nairobi, Kisumu City CBD',
      'contacts': 'Tel: 0723891404',
      'image': 'assets/images/placeholder-landscape-img.jpg'
    },
  ];

  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

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
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Advertising Banner', style: TextStyle(fontSize: 20)),
            Text('Announcements', style: TextStyle(fontSize: 20)),
          ],
        ),
        backgroundColor: Color(0xFFFEC224),
        foregroundColor: Color(0xFF005a54),
        toolbarHeight: 150,
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildOurSchoolsSection(),
            _buildOurBranchesSection(),
            _buildCourseProspectusSection(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }

  Widget _buildOurSchoolsSection() {
    final schools = [
      'School of Business',
      'School of ICT',
      'School of Journalism and Media Studies',
      'School of Hospitality',
      'School of Tourism & Travel',
      'School of Health & Social Sciences',
      'School of Fashion & Design',
      'School of Building Technology & Interior Design',
      'School of Agriculture',
      'School of Driving & Heavy Plant Machinery',
      'School of Security, Criminal Justice & Forensic Studies',
      'Computer Systems & Application Courses',
      'Partially Sponsored Short Courses'
    ];

    return Container(
      padding: const EdgeInsets.all(16.0),
      color: Colors.grey[200],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Our Schools',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF005a54)),
          ),
          SizedBox(height: 10),
          ...schools.map((school) => _buildSchool(school)).toList(),
        ],
      ),
    );
  }

  Widget _buildSchool(String schoolName) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey[300]!)),
      ),
      child: Text(
        schoolName,
        style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 36, 36, 36)),
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  Widget _buildOurBranchesSection() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Our Branches',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF005a54)),
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 200,
            child: CarouselSlider(
              options: CarouselOptions(
                height: double.infinity,
                autoPlay: true,
                enlargeCenterPage: true,
                viewportFraction: 0.9,
                aspectRatio: 16 / 9,
              ),
              items: branches.map((branch) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 4,
                            offset: Offset(2, 2),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(8)),
                            child: Image.asset(
                              branch['image']!,
                              width: 150,
                              height: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    branch['name']!,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 14, 14, 14),
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    branch['location']!,
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 31, 31, 31)),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    branch['contacts']!,
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 22, 22, 22)),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCourseProspectusSection() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Course Prospectus',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF005a54)),
          ),
          SizedBox(height: 10),
          Text(
            'Explore our range of courses designed to help you achieve your academic and professional goals. Our courses are tailored to provide the best learning experience and practical skills.',
            style: TextStyle(
                fontSize: 16, color: const Color.fromARGB(255, 36, 36, 36)),
            overflow: TextOverflow.ellipsis,
            maxLines: 3,
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              // Navigate to full course prospectus page
            },
            child: Text('Read More'),
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
