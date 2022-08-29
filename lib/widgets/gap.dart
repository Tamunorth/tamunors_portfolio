import 'package:flutter/cupertino.dart';

class Gap extends StatelessWidget {
  final double? width;
  const Gap({
    this.width,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 16,
    );
  }
}

class VGap extends StatelessWidget {
  final double? height;
  const VGap({
    this.height,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 16,
    );
  }
}
