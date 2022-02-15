import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_app/Home_Page/HomePage.dart';
import 'package:project_app/Register/LoginOtp.dart';

enum Otp { noOtp, getOtp }

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController phno = TextEditingController();

  Otp? otpVisible;

  Future login() async {
    final FirebaseAuth _auth = FirebaseAuth.instance;
    var phoneNumber = '+91 ' + phno.text;

    //first we will check if a user with this cell number exists
    var isValidUser = false;
    var number = phno.text;

    await FirebaseFirestore.instance
        .collection("Users")
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection("details")
        .where('PhoneNO', isEqualTo: number)
        .get()
        .then((result) {
      if (result.docs.length > 0) {
        isValidUser = true;
      }
    });

    if (isValidUser) {
      //non valid user

      showDialog(
          context: (context),
          builder: (BuildContext context) {
            return AlertDialog(
              content: OtpLogin(phno.text.toString()),
            );
          });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Number not found, please sign up first'),
          behavior: SnackBarBehavior.floating,
        ),
      );
    }
  }

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
            controller: phno,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                ),
                //labelText: 'Your Name',
                hintText: 'Your Mobile Number',
                fillColor: Color(0xF6F6F6)),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                login();
                // showDialog(
                //     context: (context),
                //     builder: (BuildContext context) {
                //       return AlertDialog(
                //         content: OtpLogin(phno.text.toString()),
                //       );
                //     });
                setState(() {
                  otpVisible = Otp.getOtp;
                });
                print(phno.text);
              },
              child: Text("Get One Time Password"),
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                onPrimary: Colors.white,
              ),
            ),
          ],
        ),
        //
        // Visibility(
        //   child: otpVisible == Otp.getOtp ? OtpRequest() : Container(),
        // ),
        // SizedBox(
        //   height: 40,
        // ),
        // ElevatedButton(
        //   onPressed: () {
        //     setState(() {
        //
        //     });
        //   },
        //   child: Text("Get One Time Password"),
        //   style: ElevatedButton.styleFrom(
        //     primary: Colors.black,
        //     onPrimary: Colors.white,
        //   ),
        // )
      ],
    );
  }
}
