import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddTaskscreen extends StatelessWidget {
  final Function addTaskCallback;
  AddTaskscreen(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {
    String newtasktitle;
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0))),
        child: Column(
          children: <Widget>[
            Text(
              'Add Task',
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlueAccent,
              ),
              textAlign: TextAlign.center,
            ),
            TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (newText) {
                  newtasktitle = newText;
                }),
            FlatButton(
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.lightBlueAccent,
              onPressed: () {
                //add our task to the list
                addTaskCallback(newtasktitle);
              },
            )
          ],
          crossAxisAlignment: CrossAxisAlignment.stretch,
        ),
      ),
    );
  }
}
