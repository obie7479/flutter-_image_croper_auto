import 'package:cameraoveray/image2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_for_camera_view/mask_for_camera_view.dart';
import 'package:mask_for_camera_view/mask_for_camera_view_border_type.dart';
import 'package:mask_for_camera_view/mask_for_camera_view_camera_description.dart';
import 'package:mask_for_camera_view/mask_for_camera_view_result.dart';

class Image1 extends StatefulWidget {
  Image1({super.key, required this.image1,});

  @override
  State<Image1> createState() => _Image1State();
  Uint8List image1;

}

class _Image1State extends State<Image1> {
  @override
  Widget build(BuildContext context) {
    return MaskForCameraView(
      title: "image 1",
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
              builder: (context) => (Image2(Image1: widget.image1, image2:res.croppedImage! ))),
        );
      },
    );
  }
}
