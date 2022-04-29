import 'package:charts_flutter/flutter.dart' as charts;

class InfluxDataSeries {
  final String date;
  final int value;
  final charts.Color segmentColor;
  InfluxDataSeries(
    {
      required this.date,
      required this.value,
      required this.segmentColor
    }
  );
}