import 'package:doctor_go/constants.dart';
import 'package:doctor_go/pages/RegistrationStep2_page.dart';
import 'package:doctor_go/pages/addHijo_page.dart';
import 'package:doctor_go/pages/login_page.dart';
import 'package:doctor_go/pages/nucleoFamiliar_page.dart';
import 'package:doctor_go/pages/profile_page.dart';
import 'package:doctor_go/pages/registrationStep1_page.dart';
import 'package:flutter/material.dart';

import 'pages/RegistrationStep3_Page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Doctor Go',
      theme: ThemeData(
        primaryColor: kPrimaryBarColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: LoginPage.id,
      //initialRoute: ProfilePage.id,
      routes: {
        // ProfilePage.id: (context) => ProfilePage(),
        LoginPage.id: (context) => LoginPage(),
        RegistrationStep1.id: (context) => RegistrationStep1(),
        RegistrationStep2.id: (context) => RegistrationStep2(),
        RegistrationStep3.id: (context) => RegistrationStep3(),
        ProfilePage.id: (context) => ProfilePage(),
        NucleoFamiliar.id: (context) => NucleoFamiliar(),
        AddHijo.id: (context) => AddHijo()
      },
    );
  }
}
