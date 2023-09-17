import 'package:crew_portal/Pages/choose_Profile.dart';
import 'package:crew_portal/Pages/employer_home.dart';
import 'package:crew_portal/Pages/employer_profile.dart';
import 'package:crew_portal/Pages/jobseeker_profile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    // home: EmployerHome(),
    routes: {
      '/': (context) => ChooseProfile(),
      '/employer_profile': (context) => EmployerProfile(),
      '/employer_home': (context) => EmployerHome(),
      '/jobseeker_home': (context) => JobSeekerProfile()
    },
  ));
}
