import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class PieChart1 extends StatefulWidget {
  PieChart1({required this.titles, required this.markSub});
  var titles;
  var markSub;
  @override
  _PieChart1State createState() =>
      _PieChart1State(titles: titles, markSub: markSub);
}

class _PieChart1State extends State<PieChart1> {
  _PieChart1State({required this.titles, this.markSub});
  var markSub;
  String titles;
  late List<Subject> _chartData = [];
  @override
  void initState() {
    _chartData = getMarks();
    super.initState();
    print(markSub);
    print("hello");
  }

  List<Subject> getMarks() {
    final List<Subject> chartData = [
      // Subject('Maths', markSub['Maths']),
      // Subject('Science', 8),
      // Subject('Social', 7),
      // Subject('English', 10),
    ];
    markSub.forEach((k, v) {
      var sub = Subject(k, v);
      chartData.add(sub);
      print('Print Key and Value $k , $v');
    });

    print("ChartData: $chartData");
    return chartData;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: SfCircularChart(
            title: ChartTitle(text: titles),
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
