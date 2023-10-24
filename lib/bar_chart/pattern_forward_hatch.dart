// Copyright 2018 the Charts project authors. Please see the AUTHORS file
// for details.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

/// Forward hatch pattern bar chart example.
///
/// The second series of bars is rendered with a pattern by defining a
/// fillPatternFn mapping function.
// EXCLUDE_FROM_GALLERY_DOCS_START
import 'dart:math';
// EXCLUDE_FROM_GALLERY_DOCS_END
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class PatternForwardHatchBarChart extends StatelessWidget {
  final List<charts.Series<dynamic, String>> seriesList;
  final bool animate;

  const PatternForwardHatchBarChart(this.seriesList,
      {super.key, this.animate = false});

  factory PatternForwardHatchBarChart.withSampleData() {
    return PatternForwardHatchBarChart(
      _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }

  // EXCLUDE_FROM_GALLERY_DOCS_START
  // This section is excluded from being copied to the gallery.
  // It is used for creating random series data to demonstrate animation in
  // the example app only.
  factory PatternForwardHatchBarChart.withRandomData() {
    return PatternForwardHatchBarChart(_createRandomData());
  }

  /// Create random data.
  static List<charts.Series<OrdinalSales, String>> _createRandomData() {
    final random = Random();

    final desktopSalesData = [
      OrdinalSales('Jan', random.nextInt(100)),
      OrdinalSales('Feb', random.nextInt(100)),
      OrdinalSales('Mar', random.nextInt(100)),
      OrdinalSales('Apr', random.nextInt(100)),
      OrdinalSales('May', random.nextInt(100)),
      OrdinalSales('Jun', random.nextInt(100)),
      OrdinalSales('Jul', random.nextInt(100)),
      OrdinalSales('Aug', random.nextInt(100)),
      OrdinalSales('Sep', random.nextInt(100)),
    ];

    final tableSalesData = [
      OrdinalSales('Jan', random.nextInt(100)),
      OrdinalSales('Feb', random.nextInt(100)),
      OrdinalSales('Mar', random.nextInt(100)),
      OrdinalSales('Apr', random.nextInt(100)),
      OrdinalSales('May', random.nextInt(100)),
      OrdinalSales('Jun', random.nextInt(100)),
      OrdinalSales('Jul', random.nextInt(100)),
      OrdinalSales('Aug', random.nextInt(100)),
      OrdinalSales('Sep', random.nextInt(100)),
    ];

    return [
      charts.Series<OrdinalSales, String>(
        id: 'Desktop',
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: desktopSalesData,
        fillPatternFn: (OrdinalSales sales, _) =>
            charts.FillPatternType.forwardHatch,
      ),
      charts.Series<OrdinalSales, String>(
        id: 'Tablet',
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: tableSalesData,
        fillPatternFn: (OrdinalSales sales, _) =>
            charts.FillPatternType.forwardHatch,
      ),
    ];
  }
  // EXCLUDE_FROM_GALLERY_DOCS_END

  @override
  Widget build(BuildContext context) {
    return charts.BarChart(
      seriesList,
      animate: animate,
      barGroupingType: charts.BarGroupingType.grouped,
      behaviors: [
        // Add the sliding viewport behavior to have the viewport center on the
        // domain that is currently selected.
        charts.SlidingViewport(),
        // A pan and zoom behavior helps demonstrate the sliding viewport
        // behavior by allowing the data visible in the viewport to be adjusted
        // dynamically.
        charts.PanAndZoomBehavior(),
      ],
      // Set an initial viewport to demonstrate the sliding viewport behavior on
      // initial chart load.
      domainAxis:
          charts.OrdinalAxisSpec(viewport: charts.OrdinalViewport('Jan', 10)),
    );
  }

  /// Create series list with multiple series
  static List<charts.Series<OrdinalSales, String>> _createSampleData() {
    final desktopSalesData = [
      OrdinalSales('Jan', 1),
      OrdinalSales('Feb', 2),
      OrdinalSales('Mar', 3),
      OrdinalSales('Apr', 4),
      OrdinalSales('May', 5),
      OrdinalSales('Jun', 6),
      OrdinalSales('Jul', 7),
      OrdinalSales('Aug', 8),
      OrdinalSales('Sep', 9),
    ];

    final tableSalesData = [
      OrdinalSales('Jan', 11),
      OrdinalSales('Feb', 12),
      OrdinalSales('Mar', 13),
      OrdinalSales('Apr', 14),
      OrdinalSales('May', 15),
      OrdinalSales('Jun', 16),
      OrdinalSales('Jul', 17),
      OrdinalSales('Aug', 18),
      OrdinalSales('Sep', 19),
    ];

    return [
      charts.Series<OrdinalSales, String>(
        id: 'Desktop',
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: desktopSalesData,
        fillPatternFn: (OrdinalSales sales, _) =>
            charts.FillPatternType.forwardHatch,
      ),
      charts.Series<OrdinalSales, String>(
        id: 'Tablet',
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: tableSalesData,
        fillPatternFn: (OrdinalSales sales, _) =>
            charts.FillPatternType.forwardHatch,
      ),
    ];
  }
}

/// Sample ordinal data type.
class OrdinalSales {
  final String year;
  final int sales;

  OrdinalSales(this.year, this.sales);
}
