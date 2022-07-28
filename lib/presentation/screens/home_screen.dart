import 'package:flutter/material.dart';
import 'package:voetbal_international/presentation/screens/competitions/competitions_screen.dart';
import 'package:voetbal_international/presentation/screens/meer/meer_screen.dart';
import 'package:voetbal_international/presentation/screens/mijn_vi/mijn_vi_screen.dart';
import 'package:voetbal_international/presentation/screens/nieuws/news_screen.dart';
import 'package:voetbal_international/presentation/screens/wedstrijden/wedstrijden_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedPage = 0;

  final _pageOptions = [
    const NewsScreen(),
    const WedstrijdenScreen(),
    const MijnVIScreen(),
    const CompetitionsScreen(),
    const MeerScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOptions[selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedPage,
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xff009EE0),
        selectedFontSize: 12,
        unselectedFontSize: 12,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.menu_book_outlined), label: 'Nieuws'),
          BottomNavigationBarItem(
              icon: Icon(Icons.sports_soccer), label: 'Wedstrijden'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: 'Mijn VI'),
          BottomNavigationBarItem(
              icon: Icon(Icons.emoji_events_outlined), label: 'Competities'),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: 'Meer'),
        ],
        onTap: (index) {
          setState(() => {selectedPage = index});
        },
      ),
    );
  }
}
