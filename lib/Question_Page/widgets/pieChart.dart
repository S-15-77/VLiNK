import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class PieChart1 extends StatefulWidget {
  PieChart1({required this.title});
  var title;
  @override
  _PieChart1State createState() => _PieChart1State(title: title);
}

class _PieChart1State extends State<PieChart1> {
  _PieChart1State({required this.title});

  String title;
  late List<Subject> _chartData = [];
  @override
  void initState() {
    _chartData = getMarks();
    super.initState();
  }

  List<Subject> getMarks() {
    final List<Subject> chartData = [
      Subject('Maths', 10),
      Subject('Science', 8),
      Subject('Social', 7),
      Subject('English', 10),
    ];
    return chartData;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: SfCircularChart(
            title: ChartTitle(text: title),
            tooltipBehavior: TooltipBehavior(enable: true),
            legend: Legend(
                isVisible: true, overflowMode: LegendItemOverflowMode.scroll),
            series: <CircularSeries>[
              DoughnutSeries<Subject, String>(
                dataSource: _chartData,
                xValueMapper: (Subject data, _) => data.title,
                yValueMapper: (Subject data, _) => data.mark,
                dataLabelSettings: DataLabelSettings(isVisible: true),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class Subject {
  Subject(this.title, this.mark);
  final String title;
  final int mark;
}
