import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IcomeChart extends StatefulWidget {
  const IcomeChart({super.key});

  @override
  State<IcomeChart> createState() => _IcomeChartState();
}

class _IcomeChartState extends State<IcomeChart> {
  int isActive = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        getPieChartData(),
      ),
    );
  }

  PieChartData getPieChartData() {
    return PieChartData(
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, pieTouchResponse) {
            isActive =
                pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sectionsSpace: 0,
        sections: [
          PieChartSectionData(
            radius: isActive == 0 ? 40 : 30,
            showTitle: false,
            value: 40,
            color: const Color(0xff208CC8),
          ),
          PieChartSectionData(
            radius: isActive == 1 ? 40 : 30,
            showTitle: false,
            value: 25,
            color: const Color(0xff4EB7F2),
          ),
          PieChartSectionData(
            radius: isActive == 2 ? 40 : 30,
            showTitle: false,
            value: 20,
            color: const Color(0xff064061),
          ),
          PieChartSectionData(
            radius: isActive == 3 ? 40 : 30,
            showTitle: false,
            value: 22,
            color: const Color(0xffE2DECD),
          ),
        ]);
  }
}
