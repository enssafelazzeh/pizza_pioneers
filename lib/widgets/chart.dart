import 'package:awesome_circular_chart/awesome_circular_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChartView extends StatelessWidget {
  const ChartView({super.key});

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
            33.33,
            Colors.green,
          
          ),
           CircularSegmentEntry(
            66.67,
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
         Text("510", style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
         Text("kcal", style: TextStyle(color: Color(0xFF515F65),fontSize: 6,fontWeight: FontWeight.w500),),
       ],
     ),
   ),
   ] );
  }
}