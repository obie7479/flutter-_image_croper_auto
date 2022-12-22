import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';
import 'package:cameraoveray/image1.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:mask_for_camera_view/mask_for_camera_view.dart';
import 'package:mask_for_camera_view/mask_for_camera_view_border_type.dart';
import 'package:mask_for_camera_view/mask_for_camera_view_camera_description.dart';
import 'package:mask_for_camera_view/mask_for_camera_view_result.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MaskForCameraView.initialize();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
  }
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaskForCameraView(
      boxWidth: 100,
      boxHeight: 200,
      title: "image 0",
      borderType: MaskForCameraViewBorderType.solid,
      visiblePopButton: false,
      boxBorderWidth: 2.6,
      cameraDescription: MaskForCameraViewCameraDescription.rear,
      onTake: (MaskForCameraViewResult res) {
        print(res.croppedImage!);
        final base64Str = base64.encode(res.croppedImage!);
        print(base64Str);
        // Get.to(MyImageView(image1: res.croppedImage!));
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => (Image1(image1: res.croppedImage!))),
        );
      },
    );
  }
}
