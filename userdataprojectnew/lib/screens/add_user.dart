import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:userdataprojectnew/widgets/bottom_nav_bar.dart';

class Add_User extends StatefulWidget {
  @override
  State<Add_User> createState() => _SignUpState();
}

class _SignUpState extends State<Add_User> {
  bool password_state = false;
  bool phone_verify = false;
  String? _selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavigationBarpage(),
      appBar: AppBar(
        toolbarHeight: 19,
        elevation: 0,
        leadingWidth: 10,
        titleSpacing: 4,
        backgroundColor: Colors.white,
        leading: const Padding(
          padding: EdgeInsets.only(left: 5.0),
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
            textStyle: const TextStyle(fontWeight: FontWeight.w400),
            color: Colors.blueAccent,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 12,
              ),
              Text(
                'Sign Up',
                style: GoogleFonts.roboto(
                  fontSize: 32,
                  textStyle: TextStyle(fontWeight: FontWeight.w500),
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 17,
              ),
              Center(
                child: Container(
                  alignment: Alignment.center,
                  height: 159.15,
                  width: 172,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 0,
                        left: 13,
                        child: Container(
                          height: 130,
                          width: 150,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('images/images 1.png')),
                          ),
                        ),
                      ),
                      const Positioned(
                        top: 98,
                        left: 34,
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: 20,
                          child: Icon(
                            Icons.camera_alt_sharp,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 28.85,
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
                      hintText: 'Name',
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
                height: 13,
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
              SizedBox(
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
                    obscureText: password_state ? false : true,
                    decoration: InputDecoration(
                      suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              password_state = !password_state;
                            });
                          },
                          child: password_state
                              ? Icon(
                                  Icons.visibility_outlined,
                                  color: Colors.black,
                                  size: 15,
                                )
                              : Icon(
                                  Icons.visibility_off_outlined,
                                  color: Colors.black,
                                  size: 15,
                                )),
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
                height: 14,
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
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    decoration: InputDecoration(
                      suffix: const Padding(
                        padding: EdgeInsets.only(right: 16.0),
                        child: Text('Verify'),
                      ),
                      suffixStyle: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.blue,
                      ),
                      hintText: 'Enter Mobile Number',
                      hintStyle: GoogleFonts.roboto(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey.withOpacity(0.8)),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 14),
              Padding(
                padding: const EdgeInsets.only(left: 17.0),
                child: Text(
                  'Gender',
                  style: GoogleFonts.roboto(
                    fontSize: 19,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 17.0),
                child: Row(
                  children: [
                    Text(
                      'Male',
                      style: GoogleFonts.roboto(
                        fontSize: 19,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Radio(
                        splashRadius: 2,
                        activeColor: Colors.black,
                        value: 'male',
                        groupValue: _selectedGender,
                        onChanged: (value) {
                          setState(() {
                            _selectedGender = 'male';
                          });
                        }),
                    SizedBox(
                      width: 43,
                    ),
                    Text(
                      'FeMale',
                      style: GoogleFonts.roboto(
                        fontSize: 19,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Radio(
                        splashRadius: 2,
                        activeColor: Colors.black,
                        value: 'Female',
                        groupValue: _selectedGender,
                        onChanged: (value) {
                          setState(() {
                            _selectedGender = 'Female';
                          });
                        }),
                  ],
                ),
              ),
              SizedBox(
                height: 44,
              ),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)),
                height: 48,
                width: 343,
                child: Text(
                  'Save',
                  style: GoogleFonts.roboto(
                    fontSize: 17,
                    textStyle: TextStyle(fontWeight: FontWeight.w500),
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
