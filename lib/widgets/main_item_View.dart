import 'package:flutter/material.dart';
import 'package:pizzai_pioneers/widgets/add_to_cart.dart';
import 'package:pizzai_pioneers/widgets/chart.dart';
import 'package:pizzai_pioneers/widgets/discount.dart';
import 'package:pizzai_pioneers/widgets/properties.dart';
import 'package:pizzai_pioneers/widgets/qty.dart';
import 'package:pizzai_pioneers/widgets/rating.dart';

class MainItemView extends StatelessWidget {
  const MainItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: const EdgeInsets.only(left:10 ,right: 10, bottom: 10 ),
                child: Container( 
                  height: 170,
                  width: 100,
               
                decoration:  BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.all(Radius.circular(20)),
                   boxShadow: [  BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              blurRadius: 4,
                             offset: Offset(0, 5), // Shadow position
      ),
      ],
                ),
                child: Row(children: [Stack(children:[ Image.asset("assets/pizza2.jpeg",width: 150,),
            const DiscountView(),
            const QtyView() ,    
                 ]
                 ),
                 const Column(
                  crossAxisAlignment: CrossAxisAlignment.start
                  ,
                  children: [
                  SizedBox(height: 25,),
                  Text("White Chicken", style: TextStyle(color: Color(0xFF515F65),fontSize: 20,fontWeight: FontWeight.w500),),
                   Text("Spicy chicken",style: TextStyle(color: Color(0xFF515F65),fontSize: 12,fontWeight: FontWeight.w400),),
                   SizedBox(height: 3,),
                  RatingView(),
                   SizedBox(height: 30,),
                  AddToCartView()
                 ],),
                 
                 Padding(
                   padding: const EdgeInsets.only(left: 12,top:10),
                   child: Column(
                    
                    crossAxisAlignment:CrossAxisAlignment.start,
                    children: [
                    ChartView(),
                      PropertiesView(title: 'proteins', value: '16.2',),
                     PropertiesView(title: 'carborhydrate', value: '13.9',),
                     PropertiesView(title: 'fabir', value: '8.6',),
                               
                   ],),
                 )
                  
                 ],
                 ),
                 ),
              
              ) ;
  }
}