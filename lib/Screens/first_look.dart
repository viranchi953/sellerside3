import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:sellerside/constants.dart';

class FirstLook extends StatefulWidget {
  @override
  _FirstLookState createState() => _FirstLookState();
}

final _controller = PageController(
  initialPage: 0,
);

int _currentPage = 0;

List<Widget> _pages = [
  Column(
    children: [
      Expanded(child: Image.asset('assets/grocerystore.png')),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'Order Online grocery from Your nearest store',
          style: kPageViewTextStyle,
          textAlign: TextAlign.center,
        ),
      ),
    ],
  ),
  Column(
    children: [
      Expanded(child: Image.asset('assets/enteraddress.png')),
      Text(
        'Set Your Delivery Location',
        style: kPageViewTextStyle,
        textAlign: TextAlign.center,
      ),
    ],
  ),
  Column(
    children: [
      Expanded(child: Image.asset('assets/delivery.png')),
      Text(
        'Quick delivery near your doorsteps',
        style: kPageViewTextStyle,
        textAlign: TextAlign.center,
      ),
    ],
  ),
  Column(
    children: [
      Expanded(child: Image.asset('assets/farmtools.png')),
      Text(
        'Buy or Rent farming tools ',
        style: kPageViewTextStyle,
        textAlign: TextAlign.center,
      ),
    ],
  ),
  Column(
    children: [
      Expanded(child: Image.asset('assets/location.png')),
      Text(
        'Find a nearby convenient seller or rental  ',
        style: kPageViewTextStyle,
        textAlign: TextAlign.center,
      )
    ],
  ),

];

class _FirstLookState extends State<FirstLook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
            controller: _controller,
            children: _pages,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
          ),
        ),
        SizedBox(height: 20,),
        DotsIndicator(
          dotsCount: _pages.length,
          position: _currentPage.toDouble(),
          decorator: DotsDecorator(
              size: const Size.square(9.0),
              activeSize: const Size(18.0, 9.0),
              activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0),),
              activeColor: Colors.deepOrangeAccent
          ),
        ),
          SizedBox(height: 20,),
      ],
    ),
  );
}
}

