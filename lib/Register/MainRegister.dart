import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum RegFirst {
  RegisterForFirstTime,
  RequestOTP,
}

class MainRegister extends StatefulWidget {
  const MainRegister({
    Key? key,
  }) : super(key: key);

  @override
  _MainRegisterState createState() => _MainRegisterState();
}

class _MainRegisterState extends State<MainRegister> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40,
        ),
        Container(
          padding: EdgeInsets.only(left: 38),
          alignment: Alignment.topLeft,
          child: Column(
            children: [
              Text(
                "Name",
                style: GoogleFonts.nunito(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 38, right: 40),
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                ),
                //labelText: 'Your Name',
                hintText: 'Your Name',
                fillColor: Color(0xF6F6F6)),
          ),
        ),
        SizedBox(
          height: 19,
        ),
        Container(
          padding: EdgeInsets.only(left: 38),
          alignment: Alignment.topLeft,
          child: Column(
            children: [
              Text(
                "Email",
                style: GoogleFonts.nunito(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 38, right: 40),
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                ),
                //labelText: 'Your Name',
                hintText: 'Your E-Mail Address',
                fillColor: Color(0xF6F6F6)),
          ),
        ),
        SizedBox(
          height: 19,
        ),
        Container(
          padding: EdgeInsets.only(left: 38),
          alignment: Alignment.topLeft,
          child: Column(
            children: [
              Text(
                "Phone Number",
                style: GoogleFonts.nunito(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 38, right: 40),
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                ),
                //labelText: 'Your Name',
                hintText: 'Your Mobile Number',
                fillColor: Color(0xF6F6F6)),
          ),
        ),
      ],
    );
  }
}
