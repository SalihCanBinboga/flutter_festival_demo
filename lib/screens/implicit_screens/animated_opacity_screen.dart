import 'package:flutter/material.dart';

class AnimatedOpacityScreen extends StatefulWidget {
  @override
  _AnimatedOpacityScreenState createState() => _AnimatedOpacityScreenState();
}

class _AnimatedOpacityScreenState extends State<AnimatedOpacityScreen> {
  double _opacityValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            AnimatedOpacity(
              duration: Duration(seconds: 2),
              opacity: _opacityValue,
              child: Container(
                width: 200,
                height: 200,
                color: Colors.yellow,
              ),
            ),
            RaisedButton(
              onPressed: () => setState(() => _opacityValue == 0 ? _opacityValue = 1 : _opacityValue = 0),
              child: Text('Change Opacity'),
            ),
          ],
        ),
      ),
    );
  }
}
