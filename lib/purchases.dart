
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoppingapp/items.dart';
import 'package:shoppingapp/main.dart';
import 'model.dart';

class Purchases extends StatefulWidget {
  
   Purchases({super.key});

  @override
  State<Purchases> createState() => _PurchasesState();
}

class _PurchasesState extends State<Purchases> {
  @override
  Widget build(BuildContext context) {
     Model mmm  = Provider.of<Model>(context);
    
    return Scaffold(appBar: AppBar(title: Text("Purchases"),
    actions: [
      Center(
        child: Consumer<Model>(builder: (context, value, child) {
          return Text("Total Price:${value.totalPrice}");
        },),
      )
    ],
    ),
       body: Consumer<Model>(builder: (context, model, child) {
         return ListView.builder(
        itemCount: model.list.length,
        itemBuilder: (context, index) {
         return Card(child: ListTile(title: Text("${model.list[index].name}"),
         trailing: IconButton(onPressed: (){
            model.removeItem(model.list[index],index);
           // model.notifyListeners();
         }, icon:Icon(Icons.remove_circle_outlined)),
         ),);
       },);
       },),
    );
  }
}

