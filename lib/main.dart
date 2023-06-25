import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'customCard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const DhwaniApp_HomePage(),
      theme: ThemeData(primarySwatch: Colors.orange),
    );
  }
}

class DhwaniApp_HomePage extends StatefulWidget {
  const DhwaniApp_HomePage({Key? key}) : super(key: key);

  @override
  _DhwaniApp_HomePageState createState() => _DhwaniApp_HomePageState();
}

class _DhwaniApp_HomePageState extends State<DhwaniApp_HomePage> {
  List<String> image = [
    'assets/images/A.svg',
    'assets/images/B.svg',
    'assets/images/C.svg',
    'assets/images/D.svg',
    'assets/images/E.svg'
  ];
  List<String> title = ['A', 'B', 'C', 'D', 'E'];

  List<int> clickCounts = [];

  @override
  void initState() {
    super.initState();
    _loadClickCounts();
  }

  Future<void> _loadClickCounts() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      clickCounts = title.map((t) {
        return prefs.getInt('${t}_clickCount') ?? 0;
      }).toList();
    });
  }

  void _updateClickCounts() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      clickCounts = title.map((t) {
        return prefs.getInt('${t}_clickCount') ?? 0;
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    // Sort the cards based on clickCounts in descending order
    List<int> sortedIndexes =
        List.generate(clickCounts.length, (index) => index)
          ..sort((a, b) => clickCounts[b].compareTo(clickCounts[a]));

    List<String> sortedImages =
        sortedIndexes.map((index) => image[index]).toList();
    List<String> sortedTitles =
        sortedIndexes.map((index) => title[index]).toList();

    return Scaffold(
      appBar: AppBar(title: const Text('DhwaniApp HomePage')),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemCount: sortedImages.length,
        itemBuilder: (context, index) => CardWidget(
          imagePath: sortedImages[index],
          title: sortedTitles[index],
          isFav: false,
          onUpdate: _updateClickCounts,
        ),
      ),
    );
  }
}
