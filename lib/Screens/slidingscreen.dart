import 'dart:async';

import 'package:flutter/material.dart';

class SlidingScreens extends StatefulWidget {
  const SlidingScreens({super.key});

  @override
  _SlidingScreensState createState() => _SlidingScreensState();
}
class _SlidingScreensState extends State<SlidingScreens> {
  final PageController _controller = PageController(initialPage: 0);
  final List<String> _screenTitles = ['News', 'Weather', 'Market Prices'];

  @override
  void initState() {
    super.initState();
    // Auto-scroll every 5 seconds
    Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      if (_controller.page == _screenTitles.length - 1) {
        _controller.jumpToPage(0);
      } else {
        _controller.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.easeInBack);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      child: PageView.builder(
        controller: _controller,
        scrollDirection: Axis.horizontal,
        itemCount: _screenTitles.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: 370.0,
            margin: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Center(
              child: Text(_screenTitles[index]),
            ),
          );
        },
      ),
    );
  }
}
