import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

class addValues extends ChangeNotifier {
  String bioValue = "";
  var dob;
  String name = "";
  String email = "";
  var phone = "";
  var bachelorDegree;
  var bachelorSpl;
  var bachelorCollege;
  var bachelorYrs;
  var bachelorGrading;
  var bachelorMark;

  var sclDegree;
  var sclSpl;
  var sclCollege;
  var sclYrs;
  var sclGrading;
  var sclMark;

  var linkedIN;
  var github;
  var website;

  late int timer;
  void addName(String value) {
    name = value;
    notifyListeners();
  }

  void addEmail(String value) {
    email = value;
    notifyListeners();
  }

  void addPhone(value) {
    phone = value.toString();
    notifyListeners();
  }

  void addData(String value) {
    bioValue = value;
    notifyListeners();
  }

  void addDate(value) {
    dob = DateFormat("dd-MM-yyyy").format(value);
    print(dob);
    notifyListeners();
  }

  void addBachelorDegree(value) {
    bachelorDegree = value;
    notifyListeners();
  }

  void addBachelorSpl(value) {
    bachelorSpl = value;
    notifyListeners();
  }

  void addBachelorCollege(value) {
    bachelorCollege = value;
    notifyListeners();
  }

  void addBachelorYrs(value) {
    bachelorYrs = value;
    notifyListeners();
  }

  void addBachelorGrading(value) {
    bachelorGrading = value;
    notifyListeners();
  }

  void addBachelorMark(value) {
    bachelorMark = value;
    notifyListeners();
  }

  void add12Degree(value) {
    sclDegree = value;
    notifyListeners();
  }

  void add12Spl(value) {
    sclSpl = value;
    notifyListeners();
  }

  void add12College(value) {
    sclCollege = value;
    notifyListeners();
  }

  void add12Yrs(value) {
    sclYrs = value;
    notifyListeners();
  }

  void add12Grading(value) {
    sclGrading = value;
    notifyListeners();
  }

  void add12Mark(value) {
    sclMark = value;
    notifyListeners();
  }

  void addLinkedIN(value) {
    linkedIN = value;
    notifyListeners();
  }

  void addGithub(value) {
    github = value;
    notifyListeners();
  }

  void addWebsite(value) {
    website = value;
    notifyListeners();
  }

  void getTimer(val) {
    timer = val as int;
    notifyListeners();
  }
}
