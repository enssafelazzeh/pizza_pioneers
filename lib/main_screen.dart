
  import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
    const MainScreen({super.key});
  
    @override
    State<MainScreen> createState() => _MainScreenState();
  }
  
  class _MainScreenState extends State<MainScreen> {
    @override
    Widget build(BuildContext context) {
      return Scaffold( backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(children: 
          [Row( mainAxisAlignment: MainAxisAlignment.spaceBetween ,children: [
            Icon(Icons.menu),
            Text("Date"),
            Icon(Icons.search)
          
          ],)],),
        ),
      )
      
      
      ,);
    }
  }
