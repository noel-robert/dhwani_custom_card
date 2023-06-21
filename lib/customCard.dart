import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardWidget extends StatefulWidget {
  final String imagePath;
  final String title;
  bool isFav;

  CardWidget({super.key, required this.imagePath, required this.title, required this.isFav});

  @override
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          setState(() {
            counter++;
          });
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SvgPicture.asset(
                  widget.imagePath,
                  height: MediaQuery.of(context).size.width * (1/4),
                  width: MediaQuery.of(context).size.width
                  // height: 50,
                  // width: 50,
              ),
              const SizedBox(height: 8.0),
              Text(widget.title),
              const SizedBox(height: 8.0),
              Text('Tapped $counter times'),
              // const SizedBox(height: 8.0),
              // IconButton(
              //     onPressed: () {
              //       setState(() {
              //         widget.isFav = !widget.isFav;
              //       });
              //     },
              //     icon: Icon(
              //       widget.isFav ? Icons.favorite : Icons.favorite_border,
              //       color: widget.isFav ? Colors.red : null,
              //     )
              // )
            ],
          ),
        ),
      ),
    );
  }
}