import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomModel extends StatefulWidget {
  const BottomModel({Key? key}) : super(key: key);

  @override
  _BottomModelState createState() => _BottomModelState();
}

class _BottomModelState extends State<BottomModel> {
  @override
  Widget build(BuildContext context) {
    var currentLocation;
    var location = ["Chennai", "Mumbai", "Delhi"];
    var currentPay;
    var pay = ["3LPA", "4LPA", "5LPA"];
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Filter Job Profiles',
                style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w700, fontSize: 18),
              ),
            ),
            SizedBox(
              height: 39,
            ),
            Text(
              'Location',
              style:
                  GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 18),
            ),
            Container(
              width: double.infinity,
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                    fillColor: Color(0xFFF6F6F6),
                    filled: true,
                    hintText: "Select Location",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)))),
                isExpanded: true,
                value: currentLocation,
                items: location
                    .map<DropdownMenuItem<String>>(
                      (e) => DropdownMenuItem(
                        value: e,
                        child: Text(e),
                      ),
                    )
                    .toList(),
                onChanged: (value) => {
                  setState(() {
                    if (value != null) {
                      currentLocation = value;
                    }
                  })
                },
              ),
            ),
            SizedBox(
              height: 29,
            ),
            Text(
              'Pay Range',
              style:
                  GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 18),
            ),
            Container(
              width: double.infinity,
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                    fillColor: Color(0xFFF6F6F6),
                    filled: true,
                    hintText: "Select Location",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)))),
                isExpanded: true,
                value: currentPay,
                items: pay
                    .map<DropdownMenuItem<String>>(
                      (e) => DropdownMenuItem(
                        value: e,
                        child: Text(e),
                      ),
                    )
                    .toList(),
                onChanged: (value) => {
                  setState(() {
                    if (value != null) {
                      currentPay = value;
                    }
                  })
                },
              ),
            ),
            SizedBox(
              height: 39,
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Discard'),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Colors.black,
                        elevation: 2.0,
                        minimumSize: Size(273, 47),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        side: BorderSide(color: Colors.black)),
                  ),
                ),
                SizedBox(
                  width: 24,
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Discard'),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        onPrimary: Colors.white,
                        elevation: 2.0,
                        minimumSize: Size(273, 47),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        side: BorderSide(color: Colors.black)),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
