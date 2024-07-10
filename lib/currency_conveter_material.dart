import 'package:flutter/material.dart';


class CurrencyConverterMaterialPage extends StatefulWidget{
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState() {
    return _CurrencyConverterMaterialPage();
  }
}

class _CurrencyConverterMaterialPage extends State<CurrencyConverterMaterialPage>{
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 227, 227, 227),
        title: const Text("Currency Converter"),
        elevation: 0,
      ),
      backgroundColor: const Color.fromARGB(255, 227, 227, 227),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Text(
              'INR ${result!=0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}',
              style: const TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.cyan,
              ),
            ),
             Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Colors.black,
                ),
                cursorColor: Colors.cyan,
                decoration: const InputDecoration(
                    hintText: "Please Enter the amount in USD",
                    hintStyle: TextStyle(
                      color: Colors.blueGrey,
                    ),
                    prefixIcon: Icon(
                      Icons.currency_exchange_rounded,
                      color: Colors.blueGrey,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      borderSide: BorderSide.none,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      borderSide: BorderSide.none,
                    )),
                keyboardType:const  TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                // if (kDebugMode) {
                  // print(textEditingController.text);
                // }
                result = double.parse(textEditingController.text) * 81;
                setState(() {
                  
                });
                // print('Result is: ${result*100}');
              },
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                  Colors.black,
                ),
              ),
              child: const Text(
                "Submit",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

