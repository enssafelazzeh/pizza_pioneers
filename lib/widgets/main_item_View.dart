import 'package:flutter/material.dart';
import 'package:pizzai_pioneers/model/item.dart';
import 'package:pizzai_pioneers/widgets/add_to_cart.dart';
import 'package:pizzai_pioneers/widgets/chart.dart';
import 'package:pizzai_pioneers/widgets/discount.dart';
import 'package:pizzai_pioneers/widgets/properties.dart';
import 'package:pizzai_pioneers/widgets/qty.dart';
import 'package:pizzai_pioneers/widgets/rating.dart';

class MainItemView extends StatefulWidget {
final Item item;
  final Function() onChange;
  const MainItemView({super.key, required this.item, required this.onChange});

  @override
  State<MainItemView> createState() => _MainItemViewState();
}

class _MainItemViewState extends State<MainItemView> {

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
                child: Row(children: [Stack(children:[ Image.asset("assets/pizza${widget.item.image}.jpeg",width: 150,),
               widget.item.offerPrice>0 ? DiscountView( offerPrice: widget.item.offerPrice ,): Container(),
             widget.item.qty>0 ? QtyView(qty: widget.item.qty,):Container() ,    
                 ]
                 ),
             Column(
                  crossAxisAlignment: CrossAxisAlignment.start
                  ,
                  children: [
                  const SizedBox(height: 25,),
                  Text(widget.item.nameprodect, style: TextStyle(color: Color(0xFF515F65),fontSize: 20,fontWeight: FontWeight.w500),),
                   Text(widget.item.desc,style: TextStyle(color: Color(0xFF515F65),fontSize: 12,fontWeight: FontWeight.w400),),
                   const SizedBox(height: 3,),
                  RatingView(rate: widget.item.rate,),
                   const SizedBox(height: 30,),
                  AddToCartView(price: widget.item.price, qty: widget.item.qty, 
                  onMiuns: () {
                     widget.item.qty=widget.item.qty-1
                     ;print("ensaf${widget.item.qty}");
                      widget.onChange();
                     },
                   onPlus: () { widget.item.qty=widget.item.qty+1;
                  widget.onChange();},)
                 ],),
                 
                 Padding(
                   padding: const EdgeInsets.only(left: 12,top:10),
                   child: Column(
                    
                    crossAxisAlignment:CrossAxisAlignment.start,
                    children: [
                    ChartView(kcal: widget.item.kcal,),
                      PropertiesView(title: 'proteins', value: '${widget.item.protiens}',),
                     PropertiesView(title: 'carborhydrate', value: '${widget.item.carbo}',),
                     PropertiesView(title: 'fabir', value: '${widget.item.fiber}',),
                               
                   ],),
                 )
                  
                 ],
                 ),
                 ),
              
              ) ;
  }
}