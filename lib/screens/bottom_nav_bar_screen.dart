import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:sm89_flutter_lottery/screens/results_screen.dart';
import 'package:sm89_flutter_lottery/screens/search_screen.dart';
import 'package:sm89_flutter_lottery/screens/statistics_screen.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({super.key});

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  int _selectedIndex = 0;
  final List<Map<String, dynamic>> _pages = [
    {
      'page': ResultsScreen(),
      'title': 'Kết quả',
    },
    {
      'page': SearchScreen(),
      'title': 'Dò số',
    },
    {
      'page': StatisticsScreen(),
      'title': 'Thống kê',
    },
  ];
  void _selectedPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex]['page'],
      bottomNavigationBar: SizedBox(
        height: 56,
        child: BottomNavigationBar(
            showSelectedLabels: true,
            currentIndex: _selectedIndex,
            onTap: _selectedPage,
            selectedItemColor: Theme.of(context).primaryColor,
            unselectedItemColor: Color(0xff969696),
            selectedFontSize: 14,
            items: [
              BottomNavigationBarItem(
                label: 'Kết quả',
                icon: HeroIcon(
                  HeroIcons.tableCells,
                  style: _selectedIndex == 0
                      ? HeroIconStyle.solid
                      : HeroIconStyle.outline,
                  size: 24,
                ),
              ),
              BottomNavigationBarItem(
                label: 'Dò số',
                icon: HeroIcon(
                  HeroIcons.magnifyingGlass,
                  style: HeroIconStyle.outline,
                  size: 24,
                ),
              ),
              BottomNavigationBarItem(
                label: 'Thống kê',
                icon: HeroIcon(
                  HeroIcons.chartBar,
                  style: _selectedIndex == 2
                      ? HeroIconStyle.solid
                      : HeroIconStyle.outline,
                  size: 24,
                ),
              ),
            ]),
      ),
    );
  }
}
