import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_app/InformationInput/provider.dart';
import 'package:provider/provider.dart';

class ConfirmWidget extends StatelessWidget {
  const ConfirmWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var user = FirebaseAuth.instance.currentUser;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Personal Information',
            style:
                GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 22),
          ),
          SizedBox(
            height: 14,
          ),
          Text(
            'Name',
            style:
                GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 22),
          ),
          Container(
            height: 45,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.grey[300],
              border: Border.all(width: 1),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 10, left: 15),
              child: Text(
                '${Provider.of<addValues>(context, listen: false).name}',
                style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w400, fontSize: 18),
              ),
            ),
          ),
          SizedBox(
            height: 14,
          ),
          Text(
            'Email',
            style:
                GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 22),
          ),
          Container(
            height: 45,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.grey[300],
              border: Border.all(width: 1),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 10, left: 15),
              child: Text(
                '${Provider.of<addValues>(context, listen: false).email}',
                style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w400, fontSize: 18),
              ),
            ),
          ),
          SizedBox(
            height: 14,
          ),
          Text(
            'Phone Number',
            style:
                GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 22),
          ),
          Container(
            height: 45,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.grey[300],
              border: Border.all(width: 1),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 10, left: 15),
              child: Text(
                '${Provider.of<addValues>(context, listen: false).phone}',
                style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w400, fontSize: 18),
              ),
            ),
          ),
          SizedBox(
            height: 14,
          ),
          Text(
            'Date of Birth',
            style:
                GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 22),
          ),
          Container(
            height: 45,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.grey[300],
              border: Border.all(width: 1),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 10, left: 15),
              child: Text(
                '${Provider.of<addValues>(context, listen: false).dob}',
                style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w400, fontSize: 18),
              ),
            ),
          ),
          SizedBox(
            height: 14,
          ),
          Text(
            'Your Bio',
            style:
                GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 22),
          ),
          Container(
            height: 45,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.grey[300],
              border: Border.all(width: 1),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 10, left: 15),
              child: Text(
                '${Provider.of<addValues>(context, listen: false).bioValue}',
                style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w400, fontSize: 18),
              ),
            ),
          ),
          SizedBox(
            height: 55,
          ),
          Text(
            'Bachelor\'s Degree',
            style:
                GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 22),
          ),
          SizedBox(
            height: 14,
          ),
          Text(
            'Degree Obtained',
            style:
                GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 22),
          ),
          Container(
            height: 45,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.grey[300],
              border: Border.all(width: 1),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 10, left: 15),
              child: Text(
                '${Provider.of<addValues>(context, listen: false).bachelorDegree}',
                style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w400, fontSize: 18),
              ),
            ),
          ),
          SizedBox(
            height: 14,
          ),
          Text(
            'College/University',
            style:
                GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 22),
          ),
          Container(
            height: 45,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.grey[300],
              border: Border.all(width: 1),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 10, left: 15),
              child: Text(
                '${Provider.of<addValues>(context, listen: false).bachelorCollege}',
                style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w400, fontSize: 18),
              ),
            ),
          ),
          SizedBox(
            height: 14,
          ),
          Text(
            'Graduation Year',
            style:
                GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 22),
          ),
          Container(
            height: 45,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.grey[300],
              border: Border.all(width: 1),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 10, left: 15),
              child: Text(
                '${Provider.of<addValues>(context, listen: false).bachelorYrs}',
                style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w400, fontSize: 18),
              ),
            ),
          ),
          SizedBox(
            height: 14,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Grading',
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w700, fontSize: 22),
                  ),
                  Container(
                    height: 45,
                    width: 145,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.grey[300],
                      border: Border.all(width: 1),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10, left: 15),
                      child: Text(
                        '${Provider.of<addValues>(context, listen: false).bachelorGrading}',
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w400, fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Score',
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w700, fontSize: 22),
                  ),
                  Container(
                    height: 45,
                    width: 145,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.grey[300],
                      border: Border.all(width: 1),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10, left: 15),
                      child: Text(
                        '${Provider.of<addValues>(context, listen: false).bachelorMark}',
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w400, fontSize: 18),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 55,
          ),
          Text(
            '12th / Diploma',
            style:
                GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 22),
          ),
          SizedBox(
            height: 14,
          ),
          Text(
            'Degree Obtained',
            style:
                GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 22),
          ),
          Container(
            height: 45,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.grey[300],
              border: Border.all(width: 1),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 10, left: 15),
              child: Text(
                '${Provider.of<addValues>(context, listen: false).sclDegree}',
                style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w400, fontSize: 18),
              ),
            ),
          ),
          SizedBox(
            height: 14,
          ),
          Text(
            'Board',
            style:
                GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 22),
          ),
          Container(
            height: 45,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.grey[300],
              border: Border.all(width: 1),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 10, left: 15),
              child: Text(
                '${Provider.of<addValues>(context, listen: false).sclCollege}',
                style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w400, fontSize: 18),
              ),
            ),
          ),
          SizedBox(
            height: 14,
          ),
          Text(
            'Completion Year',
            style:
                GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 22),
          ),
          Container(
            height: 45,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.grey[300],
              border: Border.all(width: 1),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 10, left: 15),
              child: Text(
                '${Provider.of<addValues>(context, listen: false).sclYrs}',
                style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w400, fontSize: 18),
              ),
            ),
          ),
          SizedBox(
            height: 14,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Grading',
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w700, fontSize: 22),
                  ),
                  Container(
                    height: 45,
                    width: 145,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.grey[300],
                      border: Border.all(width: 1),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10, left: 15),
                      child: Text(
                        '${Provider.of<addValues>(context, listen: false).sclGrading}',
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w400, fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Score',
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w700, fontSize: 22),
                  ),
                  Container(
                    height: 45,
                    width: 145,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.grey[300],
                      border: Border.all(width: 1),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10, left: 15),
                      child: Text(
                        '${Provider.of<addValues>(context, listen: false).sclMark}',
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w400, fontSize: 18),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 58,
          ),
          Text(
            'Social Links',
            style:
                GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 22),
          ),
          SizedBox(
            height: 13,
          ),
          Text(
            'LinkedIn Profile URL',
            style:
                GoogleFonts.nunito(fontSize: 18, fontWeight: FontWeight.w700),
          ),
          Container(
            height: 45,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.grey[300],
              border: Border.all(width: 1),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 10, left: 15),
              child: Text(
                '${Provider.of<addValues>(context, listen: false).linkedIN}',
                style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w400, fontSize: 18),
              ),
            ),
          ),
          SizedBox(
            height: 13,
          ),
          Text(
            'Github Profile URL',
            style:
                GoogleFonts.nunito(fontSize: 18, fontWeight: FontWeight.w700),
          ),
          Container(
            height: 45,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.grey[300],
              border: Border.all(width: 1),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 10, left: 15),
              child: Text(
                '${Provider.of<addValues>(context, listen: false).github}',
                style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w400, fontSize: 18),
              ),
            ),
          ),
          SizedBox(
            height: 13,
          ),
          Text(
            'Website URL',
            style:
                GoogleFonts.nunito(fontSize: 18, fontWeight: FontWeight.w700),
          ),
          Container(
            height: 45,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.grey[300],
              border: Border.all(width: 1),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 10, left: 15),
              child: Text(
                '${Provider.of<addValues>(context, listen: false).website}',
                style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w400, fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
