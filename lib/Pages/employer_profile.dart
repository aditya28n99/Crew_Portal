import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmployerProfile extends StatefulWidget {
  const EmployerProfile({super.key});

  @override
  State<EmployerProfile> createState() => _EmployerProfileState();
}

class _EmployerProfileState extends State<EmployerProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
                child: Container(
                  height: 52,
                  width: 52,
                  decoration: BoxDecoration(
                      color: Color(0xFF130160),
                      borderRadius: BorderRadius.circular(100)),
                  child: IconButton(
                    icon: Icon(Icons.arrow_back),
                    color: Colors.white,
                    iconSize: 25.0,
                    onPressed: () {
                      Navigator.of(context).pop(); // we can add it later.
                    },
                  ),
                ),
              ),
              Container(
                child: Text('Choose Profile',
                    style: GoogleFonts.mooli(
                      color: Colors.blueGrey[800],
                      fontSize: 22,
                    )),
              )
            ],
          ),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}
