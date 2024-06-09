
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
        child: Column(
          children: [
        headerView(),
        filterView()
      
          ],
        ),
        ),
      );
      
  

    }
    Widget headerView(){
      return
         Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.all(Radius.circular(20)),
                   boxShadow: [
                     BoxShadow(
                         color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3), // changes position of shadow
      ),
    ],              
                ),
                            child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: 
                    Column(children: 
                    [Row( mainAxisAlignment: MainAxisAlignment.spaceBetween ,children: [
                       const Icon(Icons.menu , size: 35,),
                      // Text("Today,${DateTime.now().day} ${DateTime.now().month} ${DateTime.now().year} " , style: TextStyle(color: Colors.grey , fontWeight: FontWeight.w600, fontSize: 15),),
                      Text("Today,${formatter.format(now)}" , style: const TextStyle(color: Colors.grey , fontWeight: FontWeight.w600, fontSize: 15),),
                      const Icon(Icons.search , size: 35,)
                    
                    ],),
                   const SizedBox(height: 40,),
                    Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.network("https://pngimg.com/d/pizza_PNG44071.png", width: 100,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                           const  Text("Total Amount"),
                           const SizedBox(height: 5,),
                           const Text("\$ 45.85"),
                          const  SizedBox(height: 5,),
                    
                          Container(
                            height:50,
                            width: 100,
                            decoration:  const  BoxDecoration(color: Colors.black, borderRadius: BorderRadius.all(Radius.circular(10)))
                            ,child:  const    Center(child:  Text("Pay >", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),)),)],
                        )
                      ],
                    )],),
                  ),
              ),
            );
    }
        Widget filterView () {
      return  Padding(
          padding: const EdgeInsets.only(left: 25 , right: 25),
          child: Row(children: [
            const Text("Pizza" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 16),),
            Expanded(child: Container()),
            const Row(
              children: [
                Text("MAX Price",style: TextStyle(fontWeight: FontWeight.bold , fontSize: 12),),
                Icon(Icons.arrow_drop_down_rounded)],
            )
          ],),
        );
    }

  }
