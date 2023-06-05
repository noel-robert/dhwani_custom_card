// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   List<customCards> myList = [];
//   var obj = new customCards();
//   myList.add(obj);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Text('temp text');
//     );
//   }
// }
//
// class customCards {
//   // here, you can define all variables needed for your card.
//   // in main function, create a list of these cards
//   // refer to this website - https://www.geeksforgeeks.org/dart-classes-and-objects/
//
//   // image, name, onClick, tags, clickCount, timeOfUse, isFav - fields
//
//   var image;
//   var cardTitle;
//
//   // @override
//   // State<StatefulWidget> createState() {
//   //   // TODO: implement createState
//   //   throw UnimplementedError();
//   // }
// }

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}): super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dhwani HomePage"),
      ),
      body: ListView(
        children: [],
      )
    );
  }
}
