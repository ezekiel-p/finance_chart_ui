import 'package:finance_chart_ui/bar_chart/pattern_forward_hatch.dart';
import 'package:finance_chart_ui/bar_chart/pattern_forward_hatch_2.dart';
import 'package:flutter/material.dart';

class TestChart extends StatefulWidget {
  const TestChart({super.key});

  @override
  State<TestChart> createState() => _TestChartState();
}

class _TestChartState extends State<TestChart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
              height: 200.0,
              width: 400.0,
              child: PatternForwardHatchBarChart.withRandomData()),
          Positioned(
              right: 4.0,
              child: SizedBox(
                  height: 200.0,
                  width: 400.0,
                  child: PatternForwardHatchBarChart2.withRandomData()))
        ],
      ),
    );
  }
}
