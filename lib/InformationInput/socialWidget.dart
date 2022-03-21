import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_app/InformationInput/provider.dart';
import 'package:provider/provider.dart';

class SocialWidget extends StatelessWidget {
  final _formKeys = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final linkedIn = TextEditingController();
    final github = TextEditingController();
    final website = TextEditingController();
    return Container(
      child: Form(
        key: _formKeys,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "LinkedIn Profile URL",
              style:
                  GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 18),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5, bottom: 25),
              child: TextFormField(
                onChanged: (val) {
                  Provider.of<addValues>(context, listen: false)
                      .addLinkedIN(val);
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[300],
                  hintText: "LinkedIn",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                ),
                maxLines: 1,
                controller: linkedIn,
              ),
            ),
            Text(
              "Github Profile URL",
              style:
                  GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 18),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5, bottom: 25),
              child: TextFormField(
                onChanged: (val) {
                  Provider.of<addValues>(context, listen: false).addGithub(val);
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[300],
                  hintText: "Github",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                ),
                maxLines: 1,
                controller: github,
              ),
            ),
            Text(
              "Website",
              style:
                  GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 18),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5, bottom: 25),
              child: TextFormField(
                onChanged: (val) {
                  Provider.of<addValues>(context, listen: false)
                      .addWebsite(val);
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[300],
                  hintText: "Website",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                ),
                maxLines: 1,
                controller: website,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
