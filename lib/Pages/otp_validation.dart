import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OtpValidation extends StatefulWidget {
  const OtpValidation({super.key});

  @override
  State<OtpValidation> createState() => _OtpValidationState();
}

class _OtpValidationState extends State<OtpValidation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            ],
          ),
          SizedBox(height: 10),
          Column(
            children: [
              Text(
                'Enter OTP',
                style: GoogleFonts.plusJakartaSans(
                    color: Color(0xFF130160),
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'We have just sent you 4 digit code via your email example@gmail.com',
                  style: GoogleFonts.plusJakartaSans(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
