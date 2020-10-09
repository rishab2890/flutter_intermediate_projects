import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "slidebar widget",
      home: Scaffold(
        backgroundColor: Colors.blue[900],
        body: Align(
          alignment: Alignment.center,
          child: SlideBar(),
        ),
      ),
    );
  }
}

class SlideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.lime,
        ),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.limeAccent,
            child: Icon(
              Icons.fastfood,
              color: Colors.black,
            ),
          ),
          trailing: Icon(Icons.arrow_left),
          title: Text("What do you want to eat"),
          subtitle: Text("Choose what you are craving for"),
        ),
      ),
    );
  }
}
