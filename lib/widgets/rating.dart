import 'package:flutter/material.dart';

class RatingView extends StatelessWidget {
  final double rate;
  const RatingView({super.key, required this.rate});

  @override
  Widget build(BuildContext context) {
    return  Row(children: [Image.asset("assets/star.png", height: 20,),
                   SizedBox(width: 5,),
                   Text("${rate}", style: TextStyle(fontSize: 12 ,fontWeight: FontWeight.bold),)],);
  }
}