// ignore_for_file: file_names

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'indicator.dart';
import './Color_extension.dart';
import 'package:freeu/Utils/textStyle.dart';

class PieChartSample1 extends StatefulWidget {
  const PieChartSample1({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => PieChartSample1State();
}

class PieChartSample1State extends State {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.deepPurple,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        color: Color(0xFF1B8DC9),
        boxShadow: [
          BoxShadow(
            color: Color(0x48B9B9BE),
            blurRadius: 5.0,
            spreadRadius: 0,
            // offset: Offset(10, 10, 10, 10),
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 170),
        child: Row(
          //mainAxisSize: MainAxisSize.max,
          //mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              flex: 1,
              child: AspectRatio(
                aspectRatio: 1,
                child: PieChart(
                  PieChartData(
                      pieTouchData: PieTouchData(touchCallback:
                          (FlTouchEvent event, pieTouchResponse) {
                        setState(() {
                          if (!event.isInterestedForInteractions ||
                              pieTouchResponse == null ||
                              pieTouchResponse.touchedSection == null) {
                            touchedIndex = -1;
                            return;
                          }
                          touchedIndex = pieTouchResponse
                              .touchedSection!.touchedSectionIndex;
                        });
                      }),
                      startDegreeOffset: 180,
                      borderData: FlBorderData(
                        show: false,
                      ),
                      sectionsSpace: 5,
                      centerSpaceRadius: 0,
                      sections: showingSections()),
                ),
              ),
            ),
            // const SizedBox(
            //   width: 40,
            // ),
            // Expanded(
            //   flex: 1,
            //   child: Column(
            //     mainAxisSize: MainAxisSize.max,
            //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     children: <Widget>[
            //       GestureDetector(
            //         // onTap: () {
            //         //   Navigator.push(
            //         //       context,
            //         //       MaterialPageRoute(
            //         //           builder: ((context) => const Equityinner())));
            //         // },
            //         child: Indicator(
            //           color: const Color(0xFF008083),
            //           text: ' Equity',
            //           isSquare: true,
            //           size: touchedIndex == 0 ? 18 : 16,
            //           textColor: touchedIndex == 0 ? Colors.black : Colors.grey,
            //         ),
            //       ),
            //       const SizedBox(
            //         height: 10,
            //       ),
            //       GestureDetector(
            //         // onTap: () {
            //         //   Navigator.push(
            //         //       context,
            //         //       MaterialPageRoute(
            //         //           builder: ((context) => const mutulinner())));
            //         // },
            //         child: Indicator(
            //           color: const Color(0xffB2D9D9),
            //           text: ' Mutual Fund',
            //           isSquare: true,
            //           size: touchedIndex == 1 ? 18 : 16,
            //           textColor: touchedIndex == 1 ? Colors.black : Colors.grey,
            //         ),
            //       ),
            //       const SizedBox(
            //         height: 10,
            //       ),
            //       Indicator(
            //         color: const Color(0xffF78104),
            //         text: ' Fix Deposit',
            //         isSquare: true,
            //         size: touchedIndex == 2 ? 18 : 16,
            //         textColor: touchedIndex == 2 ? Colors.black : Colors.grey,
            //       ),
            //       const SizedBox(
            //         height: 10,
            //       ),
            //       Indicator(
            //         color: const Color(0xFFFDD9B3),
            //         text: ' Real Estate',
            //         isSquare: true,
            //         size: touchedIndex == 3 ? 18 : 16,
            //         textColor: touchedIndex == 3 ? Colors.black : Colors.grey,
            //       ),
            //       const SizedBox(
            //         height: 10,
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(
      4,
      (i) {
        final isTouched = i == touchedIndex;

        const color0 = Color(0xFF008083);
        const color1 = Color(0xffB2D9D9);
        const color2 = Color(0xffF78104);
        const color3 = Color(0xFFFDD9B3);

        switch (i) {
          case 0:
            return PieChartSectionData(
              color: color0,
              value: 90,
              title: '90K',
              radius: 65,
              titleStyle: TextStyle(fontSize: 16, color: Colors.black),
              titlePositionPercentageOffset: 0.55,
              borderSide: isTouched
                  ? BorderSide(color: color0.darken(40), width: 6)
                  : BorderSide(color: color0.withOpacity(0)),
            );
          case 1:
            return PieChartSectionData(
              color: color1,
              value: 10,
              title: '10K',
              radius: 65,
              titleStyle: TextStyle(fontSize: 16, color: Colors.black),
              titlePositionPercentageOffset: 0.55,
              borderSide: isTouched
                  ? BorderSide(color: color1.darken(40), width: 6)
                  : BorderSide(color: color2.withOpacity(0)),
            );
          case 2:
            return PieChartSectionData(
              color: color2,
              value: 0,
              title: '',
              radius: 65,
              titleStyle: TextStyle(fontSize: 16, color: Colors.black),
              titlePositionPercentageOffset: 0.6,
              borderSide: isTouched
                  ? BorderSide(color: color2.darken(40), width: 6)
                  : BorderSide(color: color2.withOpacity(0)),
            );
          case 3:
            return PieChartSectionData(
              color: color3,
              value: 0,
              title: '',
              radius: 65,
              titleStyle: TextStyle(fontSize: 16, color: Colors.black),
              titlePositionPercentageOffset: 0.55,
              borderSide: isTouched
                  ? BorderSide(color: color3.darken(40), width: 6)
                  : BorderSide(color: color2.withOpacity(0)),
            );
          default:
            throw Error();
        }
      },
    );
  }
}
