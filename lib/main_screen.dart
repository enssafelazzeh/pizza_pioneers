
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pizzai_pioneers/model/item.dart';
import 'package:pizzai_pioneers/widgets/filter.dart';
import 'package:pizzai_pioneers/widgets/header.dart';
import 'package:pizzai_pioneers/widgets/main_item_View.dart';

class MainScreen extends StatefulWidget {

    const MainScreen({super.key});
  
    @override
    State<MainScreen> createState() => _MainScreenState();
  }
  
  class _MainScreenState extends State<MainScreen> {
    List<Item>itemList=[ Item(rate: 3.2, kcal: 610, protiens: "17,9", carbo: "10,8", fiber: "1,9", desc: "Spicy Checken", offerPrice: 2.1, image: "1", price: 7.3, nameprodect:"White Chicken"),
    Item(rate: 1.2, kcal: 700, protiens: "15,2", carbo: "30,2", fiber: "2,6", desc: "Spicy Checken", offerPrice: 6.3, image: "2", price: 1.3, nameprodect:"Black Chicken"),
    Item(rate: 4.2, kcal: 600, protiens: "20,7", carbo: "11,3", fiber: "9,3", desc: "Spicy Checken", offerPrice: 0, image: "3", price: 6.3, nameprodect:"Red Chicken"),

    ];
    @override
    Widget build(BuildContext context) {
      return Scaffold( backgroundColor: Colors.grey[100],
      body:  SafeArea(
        child: Column(
          children: [
         HeaderView( prices: totalPrices().toStringAsFixed(1),),
        const FilterView(),
        Expanded(
          child: ListView.builder(
            itemCount: itemList.length,
            itemBuilder: ( ctx, index) {
              return MainItemView(item: itemList[index], onChange: () {  setState(() {
                
              });},) ;
            },
          ),
        ),
      
          ],
        ),
        ),
      );
      
  

    }
  
     
double totalPrices ( ){
  double prices=0;
 
  for (var i in  itemList) {
    if(i.qty >0){
    prices=prices+(i.qty* i.price);

    }
  }
    return prices;
}
  }
