import 'package:flutter/material.dart' ;
import 'package:myapp/pages/intro.dart';
//import 'package:myapp/pages/game.dart';
//ignore: unused_import
//import 'package:flutter_application_1/pages/registration.dart';

//import 'package:flutter_application_1/products/cart.dart';
//import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:IntroPage_app()
          
  
    );
    
}
}
