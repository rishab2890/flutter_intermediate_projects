import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';

void main() {
  runApp(HomeView());
}

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<Widget> movableItems = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              movableItems.add(MovableStackItem());
            });
          },
        ),
        body: Stack(
          children: movableItems,
        ),
      ),
    );
  }
}

class MovableStackItem extends StatefulWidget {
  @override
  _MovableStackItemState createState() => _MovableStackItemState();
}

class _MovableStackItemState extends State<MovableStackItem> {
  double xPosition = 0;
  double yPosition = 0;
  int num = 1;
  Color color;
  @override
  void initState() {
    color = RandomColor().randomColor();
    num += 1;
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
          width: 150,
          height: 150,
          color: color,
          child: Text(num.toString()),
        ),
      ),
    );
  }
}
