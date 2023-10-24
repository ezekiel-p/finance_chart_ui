// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';

// class Chart2 extends StatefulWidget {
//   const Chart2({super.key});

//   @override
//   State<Chart2> createState() => _Chart2State();
// }

// class _Chart2State extends State<Chart2> {
//   final List<ChartData> chartData = [
//     ChartData("2010", 35, 2, 23, 2),
//     ChartData("2011", 38, 49, 32, 2),
//     ChartData("2012", 34, 12, 54, 2),
//     ChartData("2013", 52, 33, 23, 2),
//     ChartData("2014", 40, 30, 21, 2)
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Center(
//             child: Container(
//                 child: SfCartesianChart(
//                     enableAxisAnimation: true,
//                     enableMultiSelection: true,
//                     enableSideBySideSeriesPlacement: true,
//                     primaryXAxis: CategoryAxis(),
//                     series: <ChartSeries>[
//           StackedColumnSeries<ChartData, String>(
//               groupName: 'Group A',
//               dataSource: chartData,
//               xValueMapper: (ChartData data, _) => data.x,
//               yValueMapper: (ChartData data, _) => data.y1),
//           StackedColumnSeries<ChartData, String>(
//               groupName: 'Group B',
//               dataSource: chartData,
//               xValueMapper: (ChartData data, _) => data.x,
//               yValueMapper: (ChartData data, _) => data.y2),
//           StackedColumnSeries<ChartData, String>(
//               groupName: 'Group A',
//               dataSource: chartData,
//               xValueMapper: (ChartData data, _) => data.x,
//               yValueMapper: (ChartData data, _) => data.y3),
//           StackedColumnSeries<ChartData, String>(
//               groupName: 'Group B',
//               dataSource: chartData,
//               xValueMapper: (ChartData data, _) => data.x,
//               yValueMapper: (ChartData data, _) => data.y4)
//         ]))));
//   }
// }

// class ChartData {
//   ChartData(this.x, this.y1, this.y2, this.y3, this.y4);
//   final String x;
//   final int y1;
//   final int y2;
//   final int y3;
//   final int y4;
// }
