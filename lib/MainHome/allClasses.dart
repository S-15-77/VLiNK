import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_app/MainHome/Accounts/data.dart';

import 'AllClasses/TabClasses.dart';

class AllClasses extends StatefulWidget {
  const AllClasses({Key? key}) : super(key: key);

  @override
  _AllClassesState createState() => _AllClassesState();
}

class _AllClassesState extends State<AllClasses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 43, left: 31),
              child: Text(
                'Avaliable Classes',
                style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w700, fontSize: 18),
              ),
            ),
            SizedBox(
              height: 13,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 31),
              child: Text(
                'Choose any class according to your liking.',
                style: GoogleFonts.nunito(
                    fontSize: 14, fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Expanded(child: TabClasses()),
          ],
        )),
      ),
    );
  }
}
