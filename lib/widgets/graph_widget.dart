import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';

class GraphWidget extends StatefulWidget {
   GraphWidget({Key? key}) : super(key: key);

  @override
  State<GraphWidget> createState() => _GraphWidgetState();
}

class _GraphWidgetState extends State<GraphWidget> {
  late List<SalesData> _chartData;
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _chartData = getChartData();
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return
        SfCartesianChart(
          //title: ChartTitle(text: 'Yearly sales analysis'),
         // legend: Legend(isVisible: true),
          tooltipBehavior: _tooltipBehavior,
          series: <SplineSeries>[
            SplineSeries<SalesData, double>(
                //name: 'Sales',
                dataSource: _chartData,
                xValueMapper: (SalesData sales, _) => sales.year,
                yValueMapper: (SalesData sales, _) => sales.sales,
                //dataLabelSettings: DataLabelSettings(isVisible: true),
                //enableTooltip: true,
              color: Colors.teal

            )
          ],
          primaryXAxis: NumericAxis(
            edgeLabelPlacement: EdgeLabelPlacement.shift,
          ),
          // primaryYAxis: NumericAxis(
          //     labelFormat: '{value}M',
          //     numberFormat: NumberFormat.simpleCurrency(decimalDigits: 0)),
        );
  }

  List<SalesData> getChartData() {
    final List<SalesData> chartData = [
      SalesData(2017, 25),
      SalesData(2018, 12),
      SalesData(2019, 24),
      SalesData(2020, 18),


      // SalesData('Feb', 12),
      // SalesData('Mar', 24),
      // SalesData('Apr', 18),
      // SalesData('May', 30),
      // SalesData('Jun', 25),
      // SalesData('July', 12),
      // SalesData('Aug', 24),
      // SalesData('Sep', 18),
      // SalesData('Oct', 30),
      // SalesData('Nov', 18),
      // SalesData('Dec', 30)
    ];
    return chartData;
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final double year;
  final double sales;
}


