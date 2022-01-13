import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:userdataprojectnew/widgets/bottom_nav_bar.dart';

class UserList extends StatefulWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  _UserListState createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  List image = [
    'images/images 1.png',
    'images/images 1.png',
    'images/images 1.png',
    'images/images 1.png',
    'images/images 1.png',
    'images/images 1.png',
    'images/images 1.png',
    'images/images 1.png',
    'images/images 1.png',
    'images/images 1.png',
    'images/images 1.png',
    'images/images 1.png',
    'images/images 1.png',
    'images/images 1.png',
    'images/images 1.png',
    'images/images 1.png',
    'images/images 1.png',
    'images/images 1.png',
    'images/images 1.png',
    'images/images 1.png',
    'images/images 1.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBarpage(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        centerTitle: true,
        title: Text(
          "User List",
          style: GoogleFonts.roboto(
              fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 24.75,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(
                    Icons.person_outline,
                    color: Colors.black,
                  ),
                  Container(
                    child: Text(
                      "Total User",
                      style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                  ),
                  Container(
                    child: Text(
                      "15",
                      style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 26,
                width: 132,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black)),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 12,
                      ),
                      Text(
                        " Add New User",
                        style: GoogleFonts.roboto(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.3),
                borderRadius: BorderRadius.circular(6)),
            height: 48,
            width: 341,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  prefix: Icon(
                    Icons.search,
                    size: 20,
                    color: Colors.black,
                  ),
                  hintText: '  Search',
                  hintStyle: GoogleFonts.roboto(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey.withOpacity(0.8)),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          SizedBox(height: 16),
          Container(
            width: 341,
            height: 1,
            color: Colors.black.withOpacity(0.3),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: image.length,
              itemBuilder: (context, index) => ListTile(
                leading: CircleAvatar(
                  radius: 18,
                  backgroundImage: AssetImage(image[index]),
                ),
                title: Text(
                  'Name',
                  style: GoogleFonts.roboto(
                    fontSize: 17,
                    textStyle: TextStyle(fontWeight: FontWeight.w400),
                    color: Colors.black,
                  ),
                ),
                subtitle: Text(
                  'Email',
                  style: GoogleFonts.roboto(
                    fontSize: 13,
                    textStyle: TextStyle(fontWeight: FontWeight.w400),
                    color: Colors.black.withOpacity(0.3),
                  ),
                ),
                trailing: SizedBox(
                  height: 26,
                  width: 81,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Colors.grey.withOpacity(0.4))),
                    onPressed: () {},
                    child: Text(
                      'Remove',
                      style: GoogleFonts.roboto(
                        fontSize: 13,
                        textStyle: TextStyle(fontWeight: FontWeight.w400),
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
