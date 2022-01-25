import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_app/RegisterButton/reuseCard.dart';

enum Reg {
  Register,
  Login,
}

enum RegFirst {
  RegisterForFirstTime,
  RequestOTP,
}

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  Reg? selectedButton;
  Reg? selectedPage;

  RegFirst? selectedRegister;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(69, 67, 71, 53),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assests/images/register.png',
                      height: 116,
                      width: 235,
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        selectedButton = Reg.Register;
                      });
                    },
                    child: Text("Register"),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(160, 50),
                      primary: selectedButton == Reg.Register
                          ? Color(0xE8E7E763)
                          : Color(0xFFDA7B),
                      onPrimary: Colors.black,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        selectedButton = Reg.Login;
                      });
                    },
                    child: Text("Log In"),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(
                        160,
                        50,
                      ),
                      primary: selectedButton == Reg.Login
                          ? Color(0xE8E7E763)
                          : Color(0xFFDA7B),
                      onPrimary: Colors.black,
                    ),
                  ),
                ],
              ),

              //Main Register Page

              MainRegister(),

              //OTP Request
              SizedBox(
                height: 33,
              ),
              OtpRequest(),
            ],
          ),
        ),
      ),
    );
  }
}

class OtpRequest extends StatelessWidget {
  const OtpRequest({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ''' We\’ve sent an One Time Password to
your email and phone number.''',
              style:
                  GoogleFonts.nunito(fontSize: 18, fontWeight: FontWeight.w400),
            )
          ],
        ),
        Container(
          padding: EdgeInsets.only(left: 42, top: 37),
          alignment: Alignment.topLeft,
          child: Text(
            "One Time Password",
            style:
                GoogleFonts.nunito(fontSize: 18, fontWeight: FontWeight.w700),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //Text("Hello"),
            Container(
              width: 60,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: ' '),
              ),
            ),
            Container(
              width: 60,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: ' '),
              ),
            ),
            Container(
              width: 60,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: ' '),
              ),
            ),
            Container(
              width: 60,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: ' '),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 33,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text("Resend OTP"),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                side: BorderSide(
                  color: Colors.black,
                ),
                fixedSize: Size(225, 47),
                primary: Colors.white,
                onPrimary: Colors.black,
              ),
            )
          ],
        ),
        SizedBox(
          height: 13,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text("Register"),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                fixedSize: Size(225, 47),
                primary: Colors.black,
                onPrimary: Colors.white,
              ),
            )
          ],
        ),
      ],
    );
  }
}

class MainRegister extends StatelessWidget {
  const MainRegister({
    Key? key,
  }) : super(key: key);

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
        SizedBox(
          height: 40,
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text("Get One Time Password"),
          style: ElevatedButton.styleFrom(
            primary: Colors.black,
            onPrimary: Colors.white,
          ),
        )
      ],
    );
  }
}
