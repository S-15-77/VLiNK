import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:project_app/Home_Page/HomePage.dart';

class OtpRequest extends StatefulWidget {
  String? phone;
  String? email;
  String? name;
  OtpRequest({this.phone, this.email, this.name});
  @override
  _OtpRequestState createState() => _OtpRequestState();
}

class _OtpRequestState extends State<OtpRequest> {
  late String _verificationCode;

  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();

  final TextEditingController _pinPutController = TextEditingController();

  final FocusNode _pinPutFocusNode = FocusNode(canRequestFocus: true);

  final BoxDecoration pinPutDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(10.0),
    border: Border.all(
      color: Colors.blue,
    ),
  );

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _verifyPhone();
  }

  _verifyPhone() async {
    await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: '+91${widget.phone}',
        verificationCompleted: (PhoneAuthCredential credential) async {
          await FirebaseAuth.instance
              .signInWithCredential(credential)
              .then((value) async {
            if (value.user != null) {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                  (route) => false);
            }
          });
        },
        verificationFailed: (FirebaseAuthException e) {
          print(e.message);
        },
        codeSent: (String verficationID, int? resendToken) {
          setState(() {
            _verificationCode = verficationID;
          });
        },
        codeAutoRetrievalTimeout: (String verificationID) {
          setState(() {
            _verificationCode = verificationID;
          });
        },
        timeout: Duration(seconds: 120));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '''We\’ve sent an One Time Password to
your email and phone number.''',
              style:
                  GoogleFonts.nunito(fontSize: 15, fontWeight: FontWeight.w400),
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
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //Text("Hello"),

            Expanded(
                child: PinPut(
              fieldsCount: 6,
              focusNode: _pinPutFocusNode,
              controller: _pinPutController,
              submittedFieldDecoration: pinPutDecoration,
              selectedFieldDecoration: pinPutDecoration,
              followingFieldDecoration: pinPutDecoration,
              onSubmit: (pin) async {
                try {
                  await FirebaseAuth.instance
                      .signInWithCredential(PhoneAuthProvider.credential(
                          verificationId: _verificationCode, smsCode: pin))
                      .then((value) async {
                    if (value.user != null) {
                      print("adding to db");

                      var user = FirebaseAuth.instance.currentUser;
                      CollectionReference<Map<String, dynamic>> ref =
                          FirebaseFirestore.instance
                              .collection("Users")
                              .doc(user!.uid)
                              .collection("details");
                      ref.add({
                        "PhoneNO": widget.phone,
                        "Name": widget.name,
                        "email": widget.email
                      }).whenComplete(() => print("Added to db" + user.uid));

                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => Home()),
                          (route) => false);
                    }
                  });
                } catch (e) {
                  FocusScope.of(context).unfocus();
                  _scaffoldkey.currentState!
                      .showSnackBar(SnackBar(content: Text('invalid OTP')));
                }
              },
            )),
            // Container(
            //   width: 60,
            //   child: TextField(
            //     decoration: InputDecoration(
            //         border: OutlineInputBorder(), labelText: ' '),
            //   ),
            // ),
            // Container(
            //   width: 60,
            //   child: TextField(
            //     decoration: InputDecoration(
            //         border: OutlineInputBorder(), labelText: ' '),
            //   ),
            // ),
            // Container(
            //   width: 60,
            //   child: TextField(
            //     decoration: InputDecoration(
            //         border: OutlineInputBorder(), labelText: ' '),
            //   ),
            // ),
            // Container(
            //   width: 60,
            //   child: TextField(
            //     decoration: InputDecoration(
            //         border: OutlineInputBorder(), labelText: ' '),
            //   ),
            // ),
          ],
        ),
        SizedBox(
          height: 33,
        ),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     ElevatedButton(
        //       onPressed: () {},
        //       child: Text("Resend OTP"),
        //       style: ElevatedButton.styleFrom(
        //         shape: RoundedRectangleBorder(
        //           borderRadius: BorderRadius.circular(10.0),
        //         ),
        //         side: BorderSide(
        //           color: Colors.black,
        //         ),
        //         fixedSize: Size(225, 47),
        //         primary: Colors.white,
        //         onPrimary: Colors.black,
        //       ),
        //     )
        //   ],
        // ),
        // SizedBox(
        //   height: 13,
        // ),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     ElevatedButton(
        //       onPressed: () {},
        //       child: Text("Register"),
        //       style: ElevatedButton.styleFrom(
        //         shape: RoundedRectangleBorder(
        //           borderRadius: BorderRadius.circular(10.0),
        //         ),
        //         fixedSize: Size(225, 47),
        //         primary: Colors.black,
        //         onPrimary: Colors.white,
        //       ),
        //     )
        //   ],
        // ),
      ],
    );
  }
}
