import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
