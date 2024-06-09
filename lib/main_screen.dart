
  import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MainScreen extends StatefulWidget {
    const MainScreen({super.key});
  
    @override
    State<MainScreen> createState() => _MainScreenState();
  }
  
  class _MainScreenState extends State<MainScreen> {
      final DateTime now = DateTime.now();
        final DateFormat formatter = DateFormat('dd MMMM yyyy');
      
           
    @override
    Widget build(BuildContext context) {
      return Scaffold( backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(children: 
          [Row( mainAxisAlignment: MainAxisAlignment.spaceBetween ,children: [
            Icon(Icons.menu , size: 35,),
            // Text("Today,${DateTime.now().day} ${DateTime.now().month} ${DateTime.now().year} " , style: TextStyle(color: Colors.grey , fontWeight: FontWeight.w600, fontSize: 15),),
            Text("Today,${formatter.format(now)}" , style: TextStyle(color: Colors.grey , fontWeight: FontWeight.w600, fontSize: 15),),
            Icon(Icons.search , size: 35,)
          
          ],),
          Row(
            children: [
              Image.network("https://img.freepik.com/premium-psd/png-pizza-fast-food-image-transparent-background_1022554-37.jpg", width: 150,),
            ],
          )],),
        ),
      )
      
      
      ,);
    }
  }
