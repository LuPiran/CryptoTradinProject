import 'package:app_crypto/mocks/mock_balance.dart';
import 'package:app_crypto/widgets/chart_widget.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class BackgroundChart extends StatelessWidget {
  const BackgroundChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final minData = MockBalance.data.reduce(math.min);
    final maxData = MockBalance.data.reduce(math.max);
    return ChartWidget(
      data: MockBalance.data,
      minData: minData,
      maxData: maxData,
      minY: 0.99 * minData,
      maxY: 1.01 * maxData,
    );
  }
}
