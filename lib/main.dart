import 'package:flutter/material.dart';
import 'package:health_fitness_app/screens/help_screen.dart';
import 'package:health_fitness_app/screens/messaging_screen.dart';
import 'package:health_fitness_app/utils/routes.dart';
import 'screens/screen_export.dart';

void main() {
  runApp(const FitnessHealthApp());
}

class FitnessHealthApp extends StatelessWidget {
  const FitnessHealthApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        // '/': (context) => const FTHomeScreen(title: 'Fitness Tracker',),
        StaticRoutes.helpScreen: (context) => const HelpScreen(),
        StaticRoutes.messagingScreen: (context) => const MessagingScreen(),
      },
      title: 'Bottom Navigation Bar Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FitnessHealthHomePage(),
    );
  }
}

class FitnessHealthHomePage extends StatefulWidget {
  const FitnessHealthHomePage({super.key});

  @override
  State<FitnessHealthHomePage> createState() => FitnessHealthHomePageState();
}

class FitnessHealthHomePageState extends State<FitnessHealthHomePage> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    const HealthScreen(),
    const FitnessScreen(),
    const OrderScreen(),
    const MoreScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Health And Fitness'),
      // ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 48,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.medical_services_outlined),
            label: 'Health',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_bike),
            label: 'Fitness',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Order',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: 'More',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xFF0033EC),
        unselectedItemColor: Colors.grey[400],
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}