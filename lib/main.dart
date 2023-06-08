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

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}): super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> image = [
    'https://cdn.pixabay.com/photo/2021/06/01/07/03/sparrow-6300790_960_720.jpg',
    'https://cdn.pixabay.com/photo/2017/10/20/10/58/elephant-2870777_960_720.jpg',
    'https://cdn.pixabay.com/photo/2014/09/08/17/32/humming-bird-439364_960_720.jpg',
    'https://cdn.pixabay.com/photo/2018/05/03/22/34/lion-3372720_960_720.jpg'];
  List<String> title = ['Sparrow', 'Elephant', 'Humming Bird', 'Lion'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dhwani HomePage"),
      ),
      // body: ListView.builder(
      //   itemCount: image.length,
      //   itemBuilder: (BuildContext context, int index) {
      //     return card(image[index], title[index], context);
      //   },
      //   // children: [
      //   //   Card(
      //   //     child: Column(
      //   //       children: [
      //   //         Image.network(src),
      //   //         Text(title)
      //   //       ],
      //   //     )
      //   //   )
      //   // ],
      // )
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemCount: image.length,
        itemBuilder: (BuildContext context, int index) {
          return card(image[index], title[index], context);
        },
      )
    );
  }
}

Widget card(String image, String title, BuildContext context) {
  return Card(
    color: Colors.yellow[50],
    elevation: 8.0,
    margin: EdgeInsets.all(4.0),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    child: Column(
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Image.network(
            image,
            height: MediaQuery.of(context).size.width * (1/4),
            width: MediaQuery.of(context).size.width,
          ),
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 12.0,
            // fontWeight: FontWeight.w700
          )
        )
      ],
    ),
  );
}