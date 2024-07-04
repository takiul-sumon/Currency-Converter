import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Currencyconverter extends StatefulWidget {
  @override
  State<Currencyconverter> createState() => _CurrencyconverterState();
}

class _CurrencyconverterState extends State<Currencyconverter> {
  TextEditingController textEditingController = TextEditingController();

  double amount = 0;

  double? taka;

  convert() {
    setState(() {
      taka = amount;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Currency Converter',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w800,color: Colors.white),),centerTitle: true,backgroundColor: Colors.blueGrey,),
      
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${amount}',
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w600),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: textEditingController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    hintText: 'Enter Amount in USD',
                    hintStyle: TextStyle(color: Colors.black),
                    // suffixIcon: Icon(Icons.money)
                    prefixIcon: Icon(
                      Icons.monetization_on_outlined,
                      color: Colors.black,
                    ),
                    // focusedBorder: OutlineInputBorder(
                    //     borderSide: BorderSide(color: Colors.black),
                    //     borderRadius: BorderRadius.all(Radius.circular(5)),
                    //     ),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black,
                      width: 10.0,
                      style: BorderStyle.solid
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  amount = double.parse(textEditingController.text);
                  // print(amount);
                  setState(() {
                    amount = amount * 120;
                  });
                },
                
                style: TextButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(3))),
                    fixedSize: Size(480, 45)),

                

                child: const Text(
                  'Convert',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
