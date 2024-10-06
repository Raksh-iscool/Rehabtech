import 'package:firstapp/pages/analysis_page.dart';
import 'package:firstapp/pages/home_page.dart';
// import 'package:firstapp/pages/search_page.dart'; // Import the Search page
// import 'package:firstapp/pages/notifications_page.dart'; // Import the Notifications page
// import 'package:firstapp/pages/profile_page.dart'; // Import the Profile page
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rehab',
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentPage = 0;

  // Ensure the Analysis page is uncommented
  final screens = [
    const HomePage(),
    const Analysis(), // Uncomment the Analysis page here
    // const SearchPage(),  // Uncomment if needed
    // const NotificationsPage(),  // Uncomment if needed
    // const ProfilePage(),  // Uncomment if needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentPage, children: screens),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (index) {
          setState(() {
            currentPage = index; // Switch to the tapped page
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: currentPage == 0
                ? Icon(Icons.home, color: Colors.black)
                : Icon(Icons.home, color: Colors.grey.shade700),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: currentPage == 1
                ? Icon(Icons.analytics, color: Colors.black)
                : Icon(Icons.analytics, color: Colors.grey.shade700),
            label: 'Analysis',
          ),
          BottomNavigationBarItem(
            icon: currentPage == 2
                ? Icon(Icons.search, color: Colors.black)
                : Icon(Icons.search, color: Colors.grey.shade700),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: currentPage == 3
                ? Icon(Icons.notifications, color: Colors.black)
                : Icon(Icons.notifications, color: Colors.grey.shade700),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: currentPage == 4
                ? Icon(Icons.person, color: Colors.black)
                : Icon(Icons.person, color: Colors.grey.shade700),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
