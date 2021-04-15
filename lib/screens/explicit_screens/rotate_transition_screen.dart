import 'package:flutter/material.dart';

class RotateTransitionScreen extends StatefulWidget {
  @override
  _RotateTransitionScreenState createState() => _RotateTransitionScreenState();
}

class _RotateTransitionScreenState extends State<RotateTransitionScreen> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _turns;

  @override
  void initState() {
    _controller = AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _turns = Tween<double>(begin: 0.0, end: 1).chain(CurveTween(curve: Curves.bounceIn)).animate(_controller);
    //_turns = Tween<double>(begin: 0.0, end: 1).animate(CurvedAnimation(parent: _controller,curve: Curves.bounceIn));
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
        child: RotationTransition(
          turns: _turns,
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
