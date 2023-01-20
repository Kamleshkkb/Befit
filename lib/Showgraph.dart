import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ShowGraph extends StatefulWidget {
  const ShowGraph({Key? key}) : super(key: key);

  @override
  State<ShowGraph> createState() => _ShowGraphState();
}

class _ShowGraphState extends State<ShowGraph> {
  SideTitles get _bottom => SideTitles(
      showTitles: true,
      getTitlesWidget: (value, meta) {
        String text = '';
        switch (value.toInt()) {
          case 0:
            text = "Sun";
            break;
          case 2:
            text = "Mon";
            break;
          case 4:
            text = "Tue";
            break;
          case 6:
            text = "Wed";
            break;
          case 8:
            text = "Thu";
            break;
          case 10:
            text = "Fri";
            break;
          case 12:
            text = "Sat";
            break;
        }
        return Text(text);
      });

  SideTitles get _right => SideTitles(
      showTitles: true,
      interval: 2,
      reservedSize: 25,
      getTitlesWidget: (value, meta) {
        String str = '';
        switch (value.toInt()) {
          case 0:
            str = value.toInt().toString();
            break;
          case 2:
            str = value.toInt().toString();
            break;
          case 4:
            str = value.toInt().toString();
            break;
          case 6:
            str = value.toInt().toString();
            break;
          case 8:
            str = value.toInt().toString();
            break;
          case 10:
            str = value.toInt().toString();
        }
        return Text(str + 'h');
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: LineChart(
        LineChartData(
            minX: 0,
            maxX: 14,
            titlesData: FlTitlesData(
              bottomTitles: AxisTitles(
                sideTitles: _bottom,
              ),
              leftTitles: AxisTitles(
                  sideTitles: SideTitles(
                showTitles: false,
              )),
              rightTitles: AxisTitles(sideTitles: _right),
              topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            ),
            gridData: FlGridData(
              show: false,
              drawHorizontalLine: true,
              drawVerticalLine: true,
            ),
            borderData: FlBorderData(
                show: false,
                border: Border(right: BorderSide(), bottom: BorderSide())),
            lineBarsData: [
              LineChartBarData(
                show: true,
                belowBarData: BarAreaData(color: Colors.lightBlue, show: true),
                spots: [
                  FlSpot(0, 4),
                  FlSpot(1, 0),
                  FlSpot(2, 2),
                  FlSpot(3, 4),
                  FlSpot(4, 6),
                  FlSpot(5, 8),
                  FlSpot(6, 10),
                ],
                isCurved: true,
                dotData: FlDotData(show: false),
                color: Colors.blue,
              ),
            ]),
      ),
    );
  }
}
