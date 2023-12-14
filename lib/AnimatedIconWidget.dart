import 'package:flutter/material.dart';

class AnimatedIconWidget extends StatefulWidget {
  @override
  _AnimatedIconWidgetState createState() => _AnimatedIconWidgetState();
}

class _AnimatedIconWidgetState extends State<AnimatedIconWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,

      duration: Duration(seconds: 5),
    )..forward();
    //repeat(reverse: false);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,

      builder: (BuildContext context, Widget? child) {
        double screenWidth = MediaQuery.of(context).size.width;
        double iconWidth = 100.0; // Adjust the width of the image

        return Transform.translate(
          offset: Offset(_controller.value * (screenWidth - iconWidth), 0),
          child: Container(
            width:MediaQuery.of(context).size.width ,
            child: Image.asset(
              'assets/chiryaicon.png',
              width: screenWidth,
              height: 100.0, // Adjust the height of the image
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
