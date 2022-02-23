import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_app/Register/Otp.dart';

enum Otp { noOtp, getOtp }

class MainRegister extends StatefulWidget {
  @override
  _MainRegisterState createState() => _MainRegisterState();
}

class _MainRegisterState extends State<MainRegister> {
  // _MainRegisterState({});

  Values() {
    name!.text;
    email!.text;
    phoneno!.text;
  }

  Future login() async {
    final FirebaseAuth _auth = FirebaseAuth.instance;
    var phoneNumber = '+91 ' + phoneno!.text;

    //first we will check if a user with this cell number exists
    var isValidUser = false;
    var number = phoneno!.text;

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

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('User Already Exist'),
          behavior: SnackBarBehavior.floating,
        ),
      );
    } else {
      showDialog(
          context: (context),
          builder: (BuildContext context) {
            return AlertDialog(
              content: OtpRequest(
                phone: phoneno!.text.toString(),
                name: name!.text.toString(),
                email: email!.text.toString(),
              ),
            );
          });
    }
  }

  Otp? otpVisible;

  TextEditingController? name = TextEditingController();
  TextEditingController? email = TextEditingController();
  TextEditingController? phoneno = TextEditingController();

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
            controller: name,
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
            controller: email,
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
            controller: phoneno,
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
                //         content: OtpRequest(
                //           phone: phoneno!.text.toString(),
                //           name: name!.text.toString(),
                //           email: email!.text.toString(),
                //         ),
                //       );
                //     });

                setState(() {
                  otpVisible = Otp.getOtp;
                });
                print(name!.text);
                print(email!.text);
                print(phoneno!.text);
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
      ],
    );
  }
}
