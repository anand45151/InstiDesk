import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instidesk/view/home_screen.dart';
import 'package:instidesk/view/profile_screen.dart';
import 'package:instidesk/view/search_screen.dart';
import 'package:instidesk/view/video_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key, this.index = 0});
  final int index;

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  final List<Widget> screens = [
    const HomeScreen(),
    const SearchScreen(),
    const VideoScreen(),
    const ProfileScreen()
  ];

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.index;
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/home.svg',
              height: 22.h,
            ),
            label: '', // Empty label
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/search.svg',
              height: 22.h,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/video.svg',
              height: 22.h,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/profile.svg',
              height: 22.h,
            ),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedIconTheme: IconThemeData(size: 22.h),
        unselectedIconTheme: IconThemeData(size: 22.h),
      ),
      // bottomNavigationBar: BottomAppBar(
      //   color: Colors.white,
      //   height: 64.h,
      //   child: Padding(
      //     padding: const EdgeInsets.symmetric(horizontal: 30),
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       children: [
      //         BottomNavItem(
      //           selectedIcon: 'assets/images/home.svg',
      //           onTap: () {
      //             setState(() {
      //               _selectedIndex = 0;
      //             });
      //           },
      //           isSelected: _selectedIndex == 0,
      //         ),
      //         BottomNavItem(
      //           selectedIcon: 'assets/images/search.svg',
      //           onTap: () {
      //             setState(() {
      //               _selectedIndex = 1;
      //             });
      //           },
      //           isSelected: _selectedIndex == 1,
      //         ),
      //         BottomNavItem(
      //           selectedIcon: 'assets/images/video.svg',
      //           onTap: () {
      //             setState(() {
      //               _selectedIndex = 2;
      //             });
      //           },
      //           isSelected: _selectedIndex == 2,
      //         ),
      //         BottomNavItem(
      //           selectedIcon: 'assets/images/profile.svg',
      //           onTap: () {
      //             setState(() {
      //               _selectedIndex = 3;
      //             });
      //           },
      //           isSelected: _selectedIndex == 3,
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  const BottomNavItem({
    super.key,
    required this.onTap,
    required this.isSelected,
    required this.selectedIcon,
  });
  final String selectedIcon;

  final VoidCallback onTap;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SvgPicture.asset(
        selectedIcon,
        height: 22.h,
      ),
    );
  }
}
