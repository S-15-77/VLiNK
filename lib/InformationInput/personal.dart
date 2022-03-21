import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:project_app/InformationInput/provider.dart';
import 'package:provider/provider.dart';

class PersonalWidget extends StatefulWidget {
  @override
  _PersonalWidgetState createState() => _PersonalWidgetState();
}

class _PersonalWidgetState extends State<PersonalWidget> {
  TextEditingController dob = TextEditingController();
  TextEditingController profile = TextEditingController();
  TextEditingController bio = TextEditingController();
  var _dateTime = DateTime.now();

  final _formKeyP = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: _formKeyP,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Profile Photo",
              style:
                  GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 18),
            ),
            Text(
              "Date Of Birth",
              style:
                  GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 18),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.grey[300],
                border: Border.all(width: 1),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Container(
                      child: Text(
                        _dateTime == null
                            ? "DD/MM/YYYY"
                            : DateFormat("dd-MM-yyyy").format(_dateTime),
                        style: GoogleFonts.poppins(
                            color: Colors.grey, fontSize: 16.0),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.calendar_today,
                      color: Colors.black,
                    ),
                    onPressed: () => showDatePicker(
                            context: context,
                            firstDate: DateTime(1900),
                            lastDate: DateTime.now(),
                            initialDate: DateTime.now())
                        .then((date) {
                      setState(() {
                        _dateTime = date!;
                        Provider.of<addValues>(context, listen: false)
                            .addDate(_dateTime);
                      });
                    }),
                  ),
                ],
              ),
            ),
            Text(
              "Bio",
              style:
                  GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 18),
            ),
            TextFormField(
              onChanged: (val) {
                // bioValue = val;
                // print(bioValue);
                Provider.of<addValues>(context, listen: false).addData(val);
              },
              decoration: InputDecoration(
                  hintText: "Some details about you",
                  border: OutlineInputBorder(),
                  fillColor: Colors.grey[300],
                  filled: true),
              maxLines: 5,
              controller: bio,
            ),
          ],
        ),
      ),
    );
  }
}
