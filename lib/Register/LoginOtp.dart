import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:project_app/Home_Page/HomePage.dart';

class OtpLogin extends StatefulWidget {
  String? phone;

  OtpLogin(this.phone);
  @override
  _OtpLoginState createState() => _OtpLoginState();
}

class _OtpLoginState extends State<OtpLogin> {
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

  bool showOtp = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    login();
  }

  Future login() async {
    final FirebaseAuth _auth = FirebaseAuth.instance;
    var phoneNumber = '+91 ' + widget.phone!;

    //first we will check if a user with this cell number exists
    var isValidUser = false;
    var number = widget.phone;

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
      //ok, we have a valid user, now lets do otp verification
      var verifyPhoneNumber = _auth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationCompleted: (phoneAuthCredential) {
          //auto code complete (not manually)
          _auth.signInWithCredential(phoneAuthCredential).then((user) async => {
                if (user != null)
                  {
                    //redirect
                    setState(() {}),
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => Home(),
                      ),
                      (route) => false,
                    )
                  }
              });
        },
        verificationFailed: (FirebaseAuthException error) {
          // displaySnackBar('Validation error, please try again later');
          setState(() {});
        },
        codeSent: (verificationId, [forceResendingToken]) {
          setState(() {
            _verificationCode = verificationId;
          });
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          setState(() {
            _verificationCode = verificationId;
          });
        },
        timeout: Duration(seconds: 60),
      );
      await verifyPhoneNumber;
      setState(() {
        showOtp = true;
      });
    } else {
      //non valid user
      setState(() {
        showOtp = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Number not found, please sign up first'),
          behavior: SnackBarBehavior.floating,
        ),
      );
    }
  }

  // _verifyPhone() async {
  //   await FirebaseAuth.instance.verifyPhoneNumber(
  //       phoneNumber: '+91${widget.phone}',
  //       verificationCompleted: (PhoneAuthCredential credential) async {
  //         await FirebaseAuth.instance
  //             .signInWithCredential(credential)
  //             .then((value) async {
  //           if (value.user != null) {
  //             //print("this is userid" + user.uid);
  //
  //             Navigator.pushAndRemoveUntil(
  //                 context,
  //                 MaterialPageRoute(builder: (context) => Home()),
  //                 (route) => false);
  //           }
  //         });
  //       },
  //       verificationFailed: (FirebaseAuthException e) {
  //         print(e.message);
  //       },
  //       codeSent: (String verficationID, int? resendToken) {
  //         setState(() {
  //           _verificationCode = verficationID;
  //         });
  //       },
  //       codeAutoRetrievalTimeout: (String verificationID) {
  //         setState(() {
  //           _verificationCode = verificationID;
  //         });
  //       },
  //       timeout: Duration(seconds: 120));
  //   // return ref.add({"PhoneNO": widget.phone}).whenComplete(
  //   //     () => print("Added to db"));
  // }

  @override
  Widget build(BuildContext context) {
    var user = FirebaseAuth.instance.currentUser;
    CollectionReference<Map<String, dynamic>> ref = FirebaseFirestore.instance
        .collection("Users")
        .doc(user!.uid)
        .collection("details");
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
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => Home()),
                          (route) => false);
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("User Not Registered"),
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                    }
                  });
                } catch (e) {
                  FocusScope.of(context).unfocus();
                  _scaffoldkey.currentState!
                      .showSnackBar(SnackBar(content: Text('invalid OTP')));
                }
              },
            )),
          ],
        ),
        SizedBox(
          height: 33,
        ),
      ],
    );
  }
}
