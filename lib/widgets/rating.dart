import 'package:flutter/material.dart';

class RatingView extends StatelessWidget {
  const RatingView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(children: [Image.asset("assets/star.png", height: 20,),
                   SizedBox(width: 5,),
                   Text("4.2", style: TextStyle(fontSize: 12 ,fontWeight: FontWeight.bold),)],);
  }
}