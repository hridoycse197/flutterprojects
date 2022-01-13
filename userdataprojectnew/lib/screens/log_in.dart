import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 10,
        titleSpacing: 4,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Icon(
            Icons.arrow_back_ios,
            size: 14,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Back',
          style: GoogleFonts.montserrat(
            fontSize: 17,
            textStyle: TextStyle(fontWeight: FontWeight.w400),
            color: Colors.blueAccent,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 52,
                  ),
                  Text(
                    'LogIn',
                    style: GoogleFonts.roboto(
                      fontSize: 32,
                      textStyle: TextStyle(fontWeight: FontWeight.w500),
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Enter your email address and password to access your account',
                    style: GoogleFonts.roboto(
                      fontSize: 20,
                      textStyle: TextStyle(fontWeight: FontWeight.w400),
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 102,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(6)),
              height: 48,
              width: 343,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey.withOpacity(0.8)),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(6)),
              height: 48,
              width: 343,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.visibility,
                      size: 15,
                    ),
                    suffixIconColor: Color(000000),
                    hintText: 'Password',
                    hintStyle: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey.withOpacity(0.8)),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 72,
            ),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(10)),
              height: 48,
              width: 343,
              child: Text(
                'LogIn',
                style: GoogleFonts.roboto(
                  fontSize: 17,
                  textStyle: TextStyle(fontWeight: FontWeight.w600),
                  color: Colors.white,
                ),
              ),
            ),
            Spacer(),
            RichText(
              text: TextSpan(children: <TextSpan>[
                new TextSpan(
                  text: 'Don\'t have an account? ',
                  style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                TextSpan(
                  text: 'Sign Up',
                  style: GoogleFonts.raleway(
                      color: Colors.blueAccent,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
