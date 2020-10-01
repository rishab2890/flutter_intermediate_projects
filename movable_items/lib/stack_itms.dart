import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';

int num = 0;

class MovableStackItem extends StatefulWidget {
  @override
  _MovableStackItemState createState() => _MovableStackItemState();
}

class _MovableStackItemState extends State<MovableStackItem> {
  double xPosition = 0;
  double yPosition = 0;

  Color color;
  @override
  void initState() {
    color = RandomColor().randomColor();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: yPosition,
      left: xPosition,
      child: GestureDetector(
        onPanUpdate: (tapInfo) {
          setState(() {
            xPosition += tapInfo.delta.dx;
            yPosition += tapInfo.delta.dy;
          });
        },
        child: Container(
          alignment: Alignment.center,
          width: 150,
          height: 150,
          color: color,
          child: Text(
            num.toString(),
            style: TextStyle(
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
