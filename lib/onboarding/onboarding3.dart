import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_app/Register/Register.dart';

class Onboarding3 extends StatefulWidget {
  @override
  _Onboarding3State createState() => _Onboarding3State();
}

class _Onboarding3State extends State<Onboarding3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                    'assests/images/logo.png',
                    height: 74.0,
                    width: 74.0,
                  ),
                ],
              ),
              SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'So, What’s stopping you from achieving ',
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w400, fontSize: 18.0),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('that desired package?',
                      style: GoogleFonts.nunito(
                          fontWeight: FontWeight.w400, fontSize: 18.0)),
                ],
              ),
              SizedBox(
                height: 22.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assests/images/img.png',
                    height: 160,
                    width: 106,
                  ),
                  SizedBox(
                    width: 82,
                  ),
                  Image.asset(
                    'assests/images/img_1.png',
                    height: 160,
                    width: 138,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assests/images/img_2.png',
                    height: 136.47,
                    width: 133.55,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Get yourself registered today!',
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w700, fontSize: 22.0),
                  )
                ],
              ),
              SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    child: null,
                    backgroundColor: Colors.grey,
                    radius: 8,
                  ),
                  SizedBox(
                    width: 11,
                  ),
                  CircleAvatar(
                    child: null,
                    backgroundColor: Colors.grey,
                    radius: 8,
                  ),
                  SizedBox(
                    width: 11,
                  ),
                  CircleAvatar(
                    child: null,
                    backgroundColor: Colors.black,
                    radius: 10,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 10.0),
                    child: ElevatedButton(
                      child: Text(
                        "Login",
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w700, fontSize: 18),
                      ),
                      onPressed: () {
                        print("login");
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          onPrimary: Colors.black,
                          elevation: 2.0,
                          minimumSize: Size(146, 47),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          side: BorderSide(color: Colors.black)),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 24),
                    child: ElevatedButton(
                      child: Text(
                        "Register",
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w700, fontSize: 18),
                      ),
                      onPressed: () {
                        //print("Register");
                        Navigator.push(
                          (context),
                          MaterialPageRoute(
                            builder: (context) => Register(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        onPrimary: Colors.white,
                        elevation: 2.0,
                        minimumSize: Size(146, 47),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
