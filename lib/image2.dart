import 'package:cameraoveray/image3.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/services.dart';
import 'package:mask_for_camera_view/mask_for_camera_view.dart';
import 'package:mask_for_camera_view/mask_for_camera_view_border_type.dart';
import 'package:mask_for_camera_view/mask_for_camera_view_camera_description.dart';
import 'package:mask_for_camera_view/mask_for_camera_view_result.dart';

class Image2 extends StatefulWidget {
  Image2({super.key,required this.Image1,required this.image2,});

  @override
  State<Image2> createState() => _Image2State();
    Uint8List Image1;
  Uint8List image2;

}

class _Image2State extends State<Image2> {
  @override
  Widget build(BuildContext context) {
    return MaskForCameraView(
      title: "image 2",
      borderType: MaskForCameraViewBorderType.solid,
      visiblePopButton: false,
      boxBorderWidth: 2.6,
      cameraDescription: MaskForCameraViewCameraDescription.rear,
      onTake: (MaskForCameraViewResult res) {
        print(res.croppedImage!);
        // Get.to(MyImageView(image1: res.croppedImage!));
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => (Image3(Image1: widget.Image1, Image2: widget.image2, image3: res.croppedImage!))),
        );
      },
    );
  }
}