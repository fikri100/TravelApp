import 'package:first_project/constants/constans_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNavigationTravelKuy extends StatefulWidget {
  @override
  _BottomNavigationTravelKuyState createState() =>
      _BottomNavigationTravelKuyState();
}

class _BottomNavigationTravelKuyState extends State<BottomNavigationTravelKuy> {
  int _selectedIndex = 0;

  var buttomTextStyle =
      GoogleFonts.inter(fontSize: 12, fontWeight: FontWeight.w500);
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      decoration: BoxDecoration(
          color: mFillColor,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 15,
                offset: Offset(0, 3))
          ],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          )),
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: _selectedIndex == 0
                ? new SvgPicture.asset('assets/icons/homeActive.svg')
                : new SvgPicture.asset('assets/icons/home.svg'),
            // ignore: deprecated_member_use
            title: Text(
              'Home',
              style: buttomTextStyle,
            ),
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 1
                ? new SvgPicture.asset('assets/icons/pesananActive.svg')
                : new SvgPicture.asset('assets/icons/pesanan.svg'),
            // ignore: deprecated_member_use
            title: Text(
              'Pesanan',
              style: buttomTextStyle,
            ),
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 2
                ? new SvgPicture.asset('assets/icons/akunActive.svg')
                : new SvgPicture.asset('assets/icons/akun.svg'),
            // ignore: deprecated_member_use
            title: Text(
              'Akun',
              style: buttomTextStyle,
            ),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: mBlueColor,
        unselectedItemColor: mSubtitleColor,
        onTap: _onItemTapped,
        backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12,
        showUnselectedLabels: true,
        elevation: 0,
      ),
    );
  }
}
