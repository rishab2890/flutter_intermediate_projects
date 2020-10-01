import 'package:flutter/material.dart';
import 'package:movable_items/stack_itms.dart';

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
              num += 1;
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
