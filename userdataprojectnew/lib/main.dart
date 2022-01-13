import 'package:flutter/material.dart';
import 'package:userdataprojectnew/screens/user_profile.dart';

import 'screens/log_in.dart';
import 'screens/user_delete.dart';
import 'widgets/bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: UserProfile(),
    );
  }
}
