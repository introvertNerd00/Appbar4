import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Column(
            children: [
              Text(
                'My Purchases',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Ecommerce & Buy",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                    fontStyle: FontStyle.normal),
              )
            ],
          ),
          centerTitle: true,
          titleTextStyle: TextStyle(color: Colors.black),
          leading: IconButton(
            icon: Icon(Icons.menu, color: Colors.blue),
            onPressed: () {
              // Scaffold.of(context).openDrawer();
            },
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    children: [Icon(Icons.shopping_cart, size: 20), Text("4")],
                  )),
            ),
          ]),
    );
  }
}
