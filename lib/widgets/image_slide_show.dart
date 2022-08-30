import 'dart:async';

import 'package:flutter/material.dart';

class ImageSlideShow extends StatefulWidget {
  const ImageSlideShow({
    Key? key,
    required List<String> imageList,
  })  : _imageList = imageList,
        super(key: key);

  final List<String> _imageList;

  @override
  State<ImageSlideShow> createState() => _ImageSlideShowState();
}

class _ImageSlideShowState extends State<ImageSlideShow>
    with SingleTickerProviderStateMixin {
  int _currentIndex = 0;

  late Timer _timer;

  @override
  void initState() {
    _timer = Timer.periodic(const Duration(seconds: 2), (Timer timer) {
      if (_currentIndex < widget._imageList.length - 1) {
        ++_currentIndex;
      } else {
        _currentIndex = 0;
      }
      setState(() {});

      // log(_currentIndex);
    });
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      switchInCurve: Curves.fastOutSlowIn,
      switchOutCurve: Curves.ease,
      duration: const Duration(seconds: 1),
      child: Container(
        key: ValueKey<int>(_currentIndex),
        // height: (238),
        width: (320),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          image: DecorationImage(
            image: AssetImage(widget._imageList[_currentIndex]),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
