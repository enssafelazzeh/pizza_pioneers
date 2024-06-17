import 'package:flutter/material.dart';

class QtyView extends StatelessWidget {
  const QtyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
                      bottom: 30,
                     left: 30, 
                   child: Column(
                    children: [
                    Container(
                        height: 40,width:40,
                       decoration:  BoxDecoration(
                        color: Colors.black,
                        borderRadius: const BorderRadius.all(Radius.circular(20)),
                        boxShadow: [  BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                blurRadius: 4,
                               offset: const Offset(0, 5),
                                // Shadow position
                         ),
                         
                         ],
                                   ),
                      child: const Center(child: Text("0",style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),)),),],),
                 );
  }
}