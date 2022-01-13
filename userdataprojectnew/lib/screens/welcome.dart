import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.65), BlendMode.dstATop),
              image: AssetImage(
                'images/1245666.jpg',
              ),
            ),
          ),
          child: Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.47),
            child: Column(
              children: [
                Text(
                  'TestMe',
                  style: GoogleFonts.montserrat(
                    fontSize: 53,
                    textStyle: TextStyle(fontWeight: FontWeight.w600),
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5)),
                  height: 32,
                  width: 229,
                  child: Text(
                    'USER AUTHENTICA',
                    style: GoogleFonts.montserrat(
                      fontSize: 19,
                      textStyle: TextStyle(fontWeight: FontWeight.w500),
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 48,
                ),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10)),
                  height: 48,
                  width: 343,
                  child: Text(
                    'LogIn',
                    style: GoogleFonts.roboto(
                      fontSize: 17,
                      textStyle: TextStyle(fontWeight: FontWeight.w500),
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 13,
                ),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  height: 48,
                  width: 343,
                  child: Text(
                    'LogIn',
                    style: GoogleFonts.roboto(
                      fontSize: 17,
                      textStyle: TextStyle(fontWeight: FontWeight.w500),
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
