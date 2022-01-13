import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNavigationBarpage extends StatelessWidget {
  const BottomNavigationBarpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58,
      width: 375,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(84),
          topRight: Radius.circular(84),
        ),
      ),
      child: BottomNavigationBar(
          unselectedItemColor: Colors.white,
          currentIndex: 1,
          showSelectedLabels: true,
          selectedLabelStyle: GoogleFonts.roboto(
              fontSize: 10, fontWeight: FontWeight.w400, color: Colors.white),
          showUnselectedLabels: true,
          fixedColor: Colors.white,
          unselectedLabelStyle: GoogleFonts.roboto(
              fontSize: 10, fontWeight: FontWeight.w400, color: Colors.white),
          elevation: 0,
          backgroundColor: Colors.transparent,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.exit_to_app,
                size: 16,
              ),
              label: 'EXIT',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.transparent,
              icon: Icon(
                Icons.person_outline,
                size: 19,
              ),
              label: 'USERS',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.transparent,
              icon: Icon(
                Icons.person_outline,
                size: 16,
              ),
              label: 'PROFILE',
            ),
          ]),
    );
  }
}
