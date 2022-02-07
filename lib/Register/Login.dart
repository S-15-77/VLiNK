import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
                showDialog(
                    context: (context),
                    builder: (BuildContext context) {
                      return AlertDialog(
                        content: OtpLogin(phno.text.toString()),
                      );
                    });
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
