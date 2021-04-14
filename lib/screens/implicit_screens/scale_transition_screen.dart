import 'package:flutter/material.dart';

class ScaleTransitionScreen extends StatefulWidget {
  @override
  _ScaleTransitionScreenState createState() => _ScaleTransitionScreenState();
}

class _ScaleTransitionScreenState extends State<ScaleTransitionScreen> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _scale;

  @override
  void initState() {
    _controller = AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _scale = Tween<double>(begin: 0.0, end: 1).animate(_controller);
    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ScaleTransition(
          scale: _scale,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
