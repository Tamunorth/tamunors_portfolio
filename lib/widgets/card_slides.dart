import 'dart:async';

import 'package:flutter/material.dart';

import '../_lib.dart';

class CardSlides extends StatefulWidget {
  const CardSlides({
    Key? key,
    required this.scrollController,
  }) : super(key: key);

  final ScrollController scrollController;

  @override
  State<CardSlides> createState() => _CardSlidesState();
}

class _CardSlidesState extends State<CardSlides> {
  Timer? _timer;

  final Duration _scrollDuration = const Duration(seconds: 3);

  final Curve _scrollCurve = Curves.linear;

  final int _scrollIncrementer = 1;

  late final ValueNotifier<int> _currentScrollIndex;

  /// This functions triggers the [animateTo] function in the [scrollController]
  /// to animate the list towards a given index
  void scrollToInfinityIndex(int index) {
    widget.scrollController.animateTo(
      index * 320,
      duration: _scrollDuration,
      curve: _scrollCurve,
    );
  }

  @override
  void initState() {
    super.initState();
    _currentScrollIndex = ValueNotifier(0);

    _timer = Timer.periodic(const Duration(seconds: 3), (_) async {
      _currentScrollIndex.value += _scrollIncrementer;
      scrollToInfinityIndex(_currentScrollIndex.value);
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
    widget.scrollController.dispose();
    _currentScrollIndex.dispose();
  }

  final widgetsList = [
    Padding(
      padding: const EdgeInsets.all(30.0),
      child: ImageSlideShow(imageList: [
        Assets.pngsDropie1,
        Assets.pngsDropie2,
        Assets.pngsDropie3,
        Assets.pngsDropie4,
      ]),
    ),
    Padding(
      padding: const EdgeInsets.all(30.0),
      child: ImageSlideShow(imageList: [
        Assets.pngsTx1,
        Assets.pngsTx2,
        Assets.pngsTx3,
        Assets.pngsTx4,
      ]),
    ),
    Padding(
      padding: const EdgeInsets.all(30.0),
      child: ImageSlideShow(imageList: [
        Assets.pngsHollow1,
        Assets.pngsHollow2,
        Assets.pngsHollow3,
        Assets.pngsHollow4,
      ]),
    ),
    Padding(
      padding: const EdgeInsets.all(30.0),
      child: ImageSlideShow(imageList: [
        Assets.pngsMedbury1,
        Assets.pngsMedbury2,
        Assets.pngsMedbury3,
        Assets.pngsMedbury4,
      ]),
    ),
    Padding(
      padding: const EdgeInsets.all(30.0),
      child: ImageSlideShow(imageList: [
        Assets.pngsTitan1,
        Assets.pngsTitan2,
        Assets.pngsTitan3,
        Assets.pngsTitan4,
      ]),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700.0,
      // width: 1000,
      color: Colors.black,
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        controller: widget.scrollController,
        scrollDirection: Axis.horizontal,
        // itemCount: cardList.length,
        // itemCount: 5,
        itemBuilder: (context, index) {
          return widgetsList[index % widgetsList.length];
        },
      ),
    );
  }
}
