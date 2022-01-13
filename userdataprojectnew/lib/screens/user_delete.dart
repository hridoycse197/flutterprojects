import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:userdataprojectnew/widgets/bottom_nav_bar.dart';

class UserDelete extends StatefulWidget {
  const UserDelete({Key? key}) : super(key: key);

  @override
  _UserListState createState() => _UserListState();
}

class _UserListState extends State<UserDelete> {
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
      bottomNavigationBar: const BottomNavigationBarpage(),
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
          const SizedBox(
            height: 24.75,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  const Icon(
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
                      const Icon(
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
          const SizedBox(
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
                  prefix: const Icon(
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
          const SizedBox(height: 16),
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
                    textStyle: const TextStyle(fontWeight: FontWeight.w400),
                    color: Colors.black,
                  ),
                ),
                subtitle: Text(
                  'Email',
                  style: GoogleFonts.roboto(
                    fontSize: 13,
                    textStyle: const TextStyle(fontWeight: FontWeight.w400),
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
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) => Dialog(
                                child: Container(
                                  alignment: Alignment.topLeft,
                                  height: 188,
                                  width: 318,
                                  child: Center(
                                    child: Column(
                                      children: [
                                        Container(
                                          alignment: Alignment.topLeft,
                                          height: 100,
                                          width: 269,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              'Are You Sure ?',
                                              style: GoogleFonts.roboto(
                                                fontSize: 13,
                                                textStyle: const TextStyle(
                                                    fontWeight:
                                                        FontWeight.w400),
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 19,
                                        ),
                                        Container(
                                          height: 2,
                                          width: 289,
                                          color: Colors.grey.withOpacity(0.4),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              ElevatedButton(
                                                style: ButtonStyle(
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .all(Colors.grey
                                                                .withOpacity(
                                                                    0.4))),
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                                child: Text(
                                                  'Cancel',
                                                  style: GoogleFonts.roboto(
                                                    fontSize: 13,
                                                    textStyle: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w400),
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                              ElevatedButton(
                                                style: ButtonStyle(
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .all(Colors
                                                                .deepOrange
                                                                .shade300)),
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                                child: Text(
                                                  'Confirm',
                                                  style: GoogleFonts.roboto(
                                                    fontSize: 13,
                                                    textStyle: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w400),
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ));
                    },
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
