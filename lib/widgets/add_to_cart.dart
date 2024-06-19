import 'package:flutter/material.dart';

class AddToCartView extends StatelessWidget {
  final double price ;
  final int qty;
  final Function() onMiuns;
  final Function ()onPlus;
  const AddToCartView({super.key, required this.price, required this.qty, required this.onMiuns, required this.onPlus});

  @override
  Widget build(BuildContext context) {
    return  Row(children: [
            qty > 0?     GestureDetector(
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
                                            onMiuns();
                                            print("-");
                                          },
                     ): Container(),
                     SizedBox(width: 10,),
                     Container(
                      height: 30,
                      width: 50,
                      decoration: BoxDecoration(color: Color(0xffE9E9E9),),
                      child: Row(children: [Text( qty >0 ? "\$ ${(price * qty).toStringAsFixed(1)}":"\$ ${price.toStringAsFixed(1)}" ,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)],),
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
                                            onPlus();
                                            
                                           // qty= qty+1;
                                            print("+");
                                          },
                     ),
                   ],
                   );
}}