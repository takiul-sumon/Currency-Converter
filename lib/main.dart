import 'package:currency_converter/currency_converter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  Myapp({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(home: Currencyconverter(),
    
    debugShowCheckedModeBanner: false,);
  }
}
