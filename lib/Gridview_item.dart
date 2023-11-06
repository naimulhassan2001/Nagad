

import 'package:flutter/material.dart';

class GridviewItem extends StatelessWidget {

  String image ;
  String label ;
  GridviewItem({super.key, required this.image, required this.label});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(flex: 9,child: Center(child: Image.asset(image))),
              Expanded(flex: 3,child: Center(child: Text(label)))
            ],
          ),
        ),
      ),
    );
  }
}
