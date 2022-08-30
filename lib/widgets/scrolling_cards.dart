import 'dart:async';

import 'package:flutter/material.dart';

class ScrollingCards extends StatefulWidget {
  const ScrollingCards({
    Key? key,
    required this.cardList,
  }) : super(key: key);
  final List<Widget> cardList;

  @override
  State<ScrollingCards> createState() => _ScrollingCardsState();
}

class _ScrollingCardsState extends State<ScrollingCards> {
  Timer? _timer;
  final ScrollController scrollController = ScrollController();

  final Duration _scrollDuration = const Duration(seconds: 3);
  final Curve _scrollCurve = Curves.linear;

  final int _scrollIncrementer = 1;
  int _currentScrollIndex = 0;

  /// This functions triggers the [animateTo] function in the [scrollController]
  /// to animate the list towards a given index
  void scrollToInfinityIndex(int index) {
    scrollController.animateTo(
      index * 162,
      duration: _scrollDuration,
      curve: _scrollCurve,
    );
  }

  ///Starts an infinite loop incrementing [_currentScrollIndex] and calling [_scrollToInfinity]
  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 3), (_) async {
      _currentScrollIndex += _scrollIncrementer;
      scrollToInfinityIndex(_currentScrollIndex);
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
    scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenH = MediaQuery.of(context).size.height;
    double screenW = MediaQuery.of(context).size.width;

    ///[index % cardList.length] will return a loop of indexes for any giving list
    ///eg. 0,1,2,0,1,2,0,1,2.....
    return ListView.builder(
      controller: scrollController,
      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.horizontal,
      // itemCount: cardList.length,
      itemBuilder: (context, index) {
        return Container(
          child: widget.cardList[index],
        );
      },
    );
  }
}
