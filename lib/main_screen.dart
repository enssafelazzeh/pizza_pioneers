
  import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pizzai_pioneers/widgets/filter.dart';
import 'package:pizzai_pioneers/widgets/header.dart';
import 'package:pizzai_pioneers/widgets/main_item_View.dart';

class MainScreen extends StatefulWidget {
    const MainScreen({super.key});
  
    @override
    State<MainScreen> createState() => _MainScreenState();
  }
  
  class _MainScreenState extends State<MainScreen> {
      
           
    @override
    Widget build(BuildContext context) {
      return Scaffold( backgroundColor: Colors.grey[100],
      body:  SafeArea(
        child: Column(
          children: [
        const HeaderView(),
        const FilterView(),
        Expanded(
          child: ListView.builder(
            itemBuilder: (ctx, index) {
              return MainItemView() ;
            },
          ),
        ),
      
          ],
        ),
        ),
      );
      
  

    }
  
     

  }
