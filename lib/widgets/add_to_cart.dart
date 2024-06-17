import 'package:flutter/material.dart';

class AddToCartView extends StatelessWidget {
  const AddToCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(children: [
                 GestureDetector(
                       child: Container(width: 25 , height: 25,
                                       decoration:  BoxDecoration(
                                          color: Color(0xffE9E9E9),
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                          boxShadow: [  BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                blurRadius: 4,
                               offset: Offset(0, 5), // Shadow position
                             ),
                             ],
                                       ),
                                         child: Center(child: Icon(Icons.remove, size: 20,color: Colors.black,),),
                                         
                                          ),
                                          onTap: () {
                                            print("-");
                                          },
                     ),
                     SizedBox(width: 10,),
                     Container(
                      height: 30,
                      width: 50,
                      decoration: BoxDecoration(color: Color(0xffE9E9E9),),
                      child: Row(children: [Text("\$ 4.0" ,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)],),
                     ),
                     SizedBox(width: 10,),
                                InkWell(
                       child: Container(width: 25 , height: 25,
                                       decoration:  BoxDecoration(
                                          color: Color.fromARGB(255, 8, 8, 8),
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                          boxShadow: [  BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                blurRadius: 4,
                               offset: Offset(0, 5), // Shadow position
                             ),
                             ],
                                       ),
                                         child: Center(child: Icon(Icons.add, size: 20,color: Colors.white,),),
                                         
                                          ),
                                          onTap: () {
                                            print("+");
                                          },
                     ),
                   ],
                   );
}}