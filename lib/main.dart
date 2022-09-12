import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Hide the debug banner
      debugShowCheckedModeBanner: false,

      title: 'Kindacode.com',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  // Generate a dummy list
  final myProducts = List<String>.generate(50, (i) => 'Product $i');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Product List'),
        ),
        body: Container(
       
          child: ListView.builder(
            // the number of items in the list
              itemCount: myProducts.length,

         
              itemBuilder: (context, index) {
                return Card(
                  // In many cases, the key isn't mandatory
                  key: UniqueKey(),
                  child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(myProducts[index])),
                );
              }),
        ));
  }
}
