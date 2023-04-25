
import 'package:provider/provider.dart';
import 'package:shoppingapp/main.dart';
import 'package:shoppingapp/purchases.dart';
import 'model.dart';
import 'items.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Item> mobileitems = [
    Item(name: "S20 pro",price: 5000),
    Item(name: "S50 Max",price: 7000),
    Item(name: "S30 Vivo",price: 5000),
  ];
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Go Shopping"),
        actions: [
          Consumer<Model>(builder: (context, model, child) {
            return IconButton(onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return Purchases();
            },));
          },
          icon: Icon(Icons.add_shopping_cart),
          );
          },),
          Consumer<Model>(builder: (context, model, child) {
            return Container(
              alignment: Alignment.center,
              padding:  EdgeInsets.symmetric(horizontal: 20),
              child: Text("${model.getCount}"),
            );
          },),
          

        ],
      ),
      body: ListView.builder(
        itemCount: mobileitems.length,
        itemBuilder:(context, index) {
          return Consumer<Model>(builder:(context, model, child) {
            return Card(child:ListTile(title: Text("${mobileitems[index].name}"),
              trailing: IconButton(onPressed: (){
                model.addItem(mobileitems[index]);
          }, icon:Icon(Icons.add)),
          ),);
          },);


        
      },),
    );
  }
}