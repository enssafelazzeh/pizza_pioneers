import 'package:flutter/material.dart';

class DiscountView extends StatelessWidget {
  final double offerPrice;
  const DiscountView({super.key, required this.offerPrice});

  @override
  Widget build(BuildContext context) {
    return Positioned(
                  top: 20,
                  left: 10,
                   child: Column(
                    children: [
                    Container(
                        height: 25,width: 60,
                       decoration:  BoxDecoration(
                        color: Colors.red,
                        borderRadius: const BorderRadius.all(Radius.circular(20)),
                        boxShadow: [  BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                blurRadius: 4,
                               offset: const Offset(0, 5),
                                // Shadow position
                         ),
                         
                         ],
                                   ),
                      child:  Center(child: Text("\$${offerPrice} oFF",style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),)),),],),
                 );
  }
}