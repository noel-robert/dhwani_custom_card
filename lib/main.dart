// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
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
//     return const MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}): super(key: key);
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   List<String> image = [
//     'assets/images/A.svg', 'assets/images/B.svg', 'assets/images/C.svg', 'assets/images/D.svg'];
//   List<String> title = ['A', 'B', 'C', 'D'];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text("Dhwani HomePage"),
//         ),
//         body: GridView.builder(
//           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//             mainAxisSpacing: 10,
//             crossAxisSpacing: 10,
//           ),
//           itemCount: image.length,
//           itemBuilder: (BuildContext context, int index) {
//             return card(image[index], title[index], context);
//           },
//         )
//     );
//   }
// }
//
// Widget card(String image, String title, BuildContext context) {
//   return Card(
//     color: Colors.yellow[50],
//     elevation: 8.0,
//     margin: const EdgeInsets.all(4.0),
//     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
//     child: Column(
//       children: [
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: SvgPicture.asset(image, height: MediaQuery.of(context).size.width * (1/4), width: MediaQuery.of(context).size.width)
//         ),
//         Text(
//           title,
//           style: const TextStyle(
//             fontSize: 12.0,
//             fontWeight: FontWeight.w700
//           )
//         )
//       ],
//     ),
//   );
// }
//
// class customCard {
//   String? image;
//   String? title;
//   BuildContext? context;
//
//   customCard({this.image, this.title, this.context})
//   return card(image, title, context);
// }


import 'package:flutter/material.dart';
import 'customCard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const DhwaniApp_HomePage(),
      theme: ThemeData(primarySwatch: Colors.orange),
    );
  }
}

class DhwaniApp_HomePage extends StatefulWidget {
  const DhwaniApp_HomePage({Key? key}): super(key: key);

  @override
  _DhwaniApp_HomePageState createState() => _DhwaniApp_HomePageState();
}

class _DhwaniApp_HomePageState extends State<DhwaniApp_HomePage> {
    List<String> image = ['assets/images/A.svg', 'assets/images/B.svg', 'assets/images/C.svg', 'assets/images/D.svg', 'assets/images/E.svg'];
    List<String> title = ['A', 'B', 'C', 'D', 'E'];

    @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
            title: const Text('DhwaniApp HomePage')
        ),
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10
          ),
          itemCount: image.length,
          itemBuilder: (context, index) => CardWidget(
            imagePath: image[index],
            title: title[index],
            isFav: false,
          ),
        ),
      );
    }
}