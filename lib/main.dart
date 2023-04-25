import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoppingapp/items.dart';
import 'home.dart';
import 'items.dart';
import 'model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => Model(),
    builder: (context, child) {
      Model mmm  = Provider.of<Model>(context);
      return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: Home(),
    );
    },
    );
  }
}
