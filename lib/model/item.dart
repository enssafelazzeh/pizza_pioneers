class Item {
  final double offerPrice;
  final  String image ;
  final double price;
   final String desc;
   final double rate;
   final int kcal;
   final String protiens;
   final String carbo;
   final String fiber; 

  final String nameprodect;
  int qty;
  Item({ required this.rate,  required this.kcal,  required this.protiens, required this.carbo, required this.fiber, required this.desc,required this.offerPrice,required this.image, required this.price, required this.nameprodect ,this.qty=0 });
}