import 'package:flutter/material.dart';

class PropertiesView extends StatelessWidget {
    final String title;
    final String value;
  const PropertiesView({super.key, required this.title, required this.value});
  @override
  Widget build(BuildContext context) {
    return  Column( crossAxisAlignment: CrossAxisAlignment.start,
        
         children: [ 
                
           Text(title,style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold)),
     Row(children: [
       Text(value,style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold)),
       SizedBox(width: 6,),
       Text("gr",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold)),
       ],
       )
         ],
     );
  }
}