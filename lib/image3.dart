import 'package:cameraoveray/image3.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Image3 extends StatefulWidget {
  Image3(
      {super.key,
      required this.Image1,
      required this.Image2,
      required this.image3,});

  @override
  State<Image3> createState() => _Image3State();
  Uint8List Image1;
  Uint8List Image2;
  Uint8List image3;
}

class _Image3State extends State<Image3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("show image"),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.memory(widget.Image1),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.memory(widget.Image2),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.memory(widget.image3),
            ),
      
          ],
        ),
      ),
    );
  }
}
