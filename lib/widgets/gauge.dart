/// Gauge chart example, where the data does not cover a full revolution in the
/// chart.
import 'dart:math';

import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class GaugeChart extends StatelessWidget {
  final List<charts.Series<GaugeSegment, String>> seriesList;
  final bool? animate;

  GaugeChart(this.seriesList, {this.animate});

  @override
  Widget build(BuildContext context) {
    return charts.PieChart<String>(seriesList,
        animate: animate,
        // Configure the width of the pie slices to 30px. The remaining space in
        // the chart will be left as a hole in the center. Adjust the start
        // angle and the arc length of the pie so it resembles a gauge.
        defaultRenderer: charts.ArcRendererConfig(
            arcWidth: 30, startAngle: 4 / 5 * pi, arcLength: 7 / 5 * pi));
  }
}

/// Sample data type.
class GaugeSegment {
  String segment;
  int size;
  charts.Color color;

  GaugeSegment(this.segment, this.size, this.color);
}