import 'package:awesome_circular_chart/awesome_circular_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChartView extends StatelessWidget {
  final int kcal;
  const ChartView({super.key, required this.kcal});

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children:[ AnimatedCircularChart(
        key: GlobalKey<AnimatedCircularChartState>(),
        size: Size(40,40),
        initialChartData: <CircularStackEntry>[
      CircularStackEntry(
        <CircularSegmentEntry>[
         CircularSegmentEntry(
            (kcal/10).toDouble(),
            Colors.green,
          
          ),
           CircularSegmentEntry(
           (1000-(kcal/10)).toDouble(),
            Colors.grey[600],
          
          ),
        ],
        
      ),
        ],
       
      ),
      
   Positioned(
    top: 10,
    left: 10,
     child: Column(
       children: [
         Text("${kcal}", style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
         Text("kcal", style: TextStyle(color: Color(0xFF515F65),fontSize: 6,fontWeight: FontWeight.w500),),
       ],
     ),
   ),
   ] );
  }
}