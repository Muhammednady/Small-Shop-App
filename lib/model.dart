
 import 'package:flutter/material.dart';
 import 'items.dart';

class Model extends ChangeNotifier{

  List<Item> _items = [];
  int _counter = 0;
  double price = 0.0;

  addItem(Item item){
    _items.add(item);
    price+=item.price!;
    _counter++;
    notifyListeners();
  }

   removeItem(Item item , int index){
  //  _items.remove(item);
    _items.removeAt(index);
    price-=item.price!;
    _counter--;
    notifyListeners();
  }
  double get totalPrice => price;
 int get getCount => _items.length;
 List<Item> get list => _items;



 }  
      