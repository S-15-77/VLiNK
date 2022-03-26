import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplyBottomModel extends StatefulWidget {
  const ApplyBottomModel({Key? key}) : super(key: key);

  @override
  _ApplyBottomModelState createState() => _ApplyBottomModelState();
}

class _ApplyBottomModelState extends State<ApplyBottomModel> {
  TextEditingController role = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.only(left: 50.0, top: 20.0, right: 50.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          children: [
            Text(
              'Why do you think you are suitable for this role?',
              style:
                  GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 18),
            ),
            SizedBox(
              height: 22,
            ),
            TextFormField(
              controller: role,
              maxLines: 6,
              decoration: InputDecoration(
                hintText: 'Your Answer',
                filled: true,
                fillColor: Colors.grey[300],
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(10.0)),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  '300 Characters Remaining',
                  style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xFF9C9C9C)),
                )
              ],
            ),
            SizedBox(
              height: 85,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      onPrimary: Colors.white,
                      elevation: 2.0,
                      minimumSize: Size(146, 47),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      side: BorderSide(color: Colors.black)),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Discard'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.black,
                      elevation: 2.0,
                      minimumSize: Size(146, 47),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      side: BorderSide(color: Colors.black)),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Apply'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
