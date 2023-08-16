import 'package:flutter/material.dart';
import '../../utils/color_utils.dart';

class W2 extends StatelessWidget {
  const W2({super.key, required this.color});
  final String color;
  @override
  Widget build(BuildContext context) {
    return Container(
      key: const Key('W2'),
      width: 200,
      height: 200,
      color: ColorUtils.CreateMaterialColor(
          color), // should be grey when the decimal is bellow 0.4
    );
  }
}
