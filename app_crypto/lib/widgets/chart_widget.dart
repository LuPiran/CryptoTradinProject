import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ChartWidget extends StatefulWidget {
  final List<double> data;
  final double minData;
  final double maxData;
  final double? minY;
  final double? maxY;

  const ChartWidget({
    Key? key,
    required this.data,
    required this.maxData,
    required this.minData,
    this.maxY,
    this.minY,
  }) : super(key: key);

  @override
  State<ChartWidget> createState() => _ChartWidgetState();
}

class _ChartWidgetState extends State<ChartWidget> {
  var dataAnimated = [];
  @override
  void initState() {
    dataAnimated = List.filled(widget.data.length, widget.minData);

    Future.delayed(const Duration(microseconds: 200)).then((_) {
      setState(() {
        dataAnimated = widget.data;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 100),
      child: LineChart(
        swapAnimationCurve: Curves.easeInOut,
        swapAnimationDuration: const Duration(milliseconds: 400),
        LineChartData(
          minX: 0,
          maxX: widget.data.length - 1,
          minY: widget.minY ?? widget.minData,
          maxY: widget.maxY ?? widget.maxData,
          titlesData: FlTitlesData(
            show: false,
          ),
          lineTouchData: LineTouchData(
            enabled: false,
          ),
          gridData: FlGridData(
            show: false,
          ),
          borderData: FlBorderData(
            show: false,
          ),
          lineBarsData: [
            LineChartBarData(
              spots: [
                for (int i = 0; i < dataAnimated.length; i++)
                  FlSpot(i.toDouble(), dataAnimated[i])
              ],
              isCurved: true,
              barWidth: 3,
              isStrokeCapRound: true,
              gradient: const LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color(0x00FFFFFF),
                  Color(0xFFFFFFFF),
                ],
              ),
              dotData: FlDotData(
                show: false,
              ),
              belowBarData: BarAreaData(
                show: true,
                gradient: const LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color(0xFFFFFFFF),
                    Color(0x00FFFFFF),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
