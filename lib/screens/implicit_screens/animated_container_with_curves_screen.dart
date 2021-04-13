import 'package:flutter/material.dart';

class AnimatedContainerWithCurvesScreen extends StatefulWidget {
  @override
  _AnimatedContainerWithCurvesScreenState createState() => _AnimatedContainerWithCurvesScreenState();
}

class _AnimatedContainerWithCurvesScreenState extends State<AnimatedContainerWithCurvesScreen> {
  double _width = 125;
  double _height = 125;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            AnimatedContainer(
              duration: Duration(seconds: 2),
              width: _width,
              height: _height,
              color: Colors.red,
              curve: Curves.bounceInOut,
            ),
            RaisedButton(
              onPressed: updateValues,
              child: Text('Change Size'),
            ),
          ],
        ),
      ),
    );
  }

  void updateValues() {
    setState(() {
      _width = _width == 250 ? 125 : 250;
      _height = _height == 250 ? 125 : 250;
    });
  }
}
