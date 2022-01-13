import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:userdataprojectnew/widgets/bottom_nav_bar.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  final format = DateFormat('dd/mm/yyyy').format(DateTime.now());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBarpage(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        centerTitle: true,
        title: Text(
          "Profile",
          style: GoogleFonts.roboto(
              fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 19,
              ),
              Container(
                height: 176,
                width: 192.22,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.fill, image: AssetImage('images/images.png')),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                'Mr. John Doe',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500,
                  fontSize: 36,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Email@email.com',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Password',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Phone:012345678901',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
              Card(
                elevation: 1,
                child: Container(
                  alignment: Alignment.center,
                  width: 344,
                  height: 34,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 2,
                          color: Colors.black.withOpacity(0.3),
                        ),
                      ]),
                  child: Text(
                    'Created Date & Time: ' +
                        DateFormat('dd/mm/yyyy hh.mm a')
                            .format(DateTime.now())
                            .toString(),
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      size: 14,
                    ),
                    SizedBox(
                      width: 10.21,
                    ),
                    Text(
                      'Location',
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 9),
              Container(
                width: 344,
                alignment: Alignment.center,
                height: 227,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4,
                        color: Colors.black.withOpacity(0.3),
                      ),
                    ]),
                child: Container(
                  height: 207,
                  width: 322,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image:
                              AssetImage('images/Simple-Location-Picker.png'))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
