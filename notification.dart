import 'package:flutter/material.dart';
import 'dart:async';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('yousef'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('This is a demo alert dialog.'),
                Text('Would you like to approve of this message?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Approve'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void showBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return new Container(
              padding: EdgeInsets.all(50),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text('Hello Joo'),
                  new FlatButton(
                      onPressed: () => Navigator.pop(context),
                      child: new Text('close'))
                ],
              ));
        });
  }

  String myVal = 'Are you Joo ??';
  void setAns(String value) {
    setState(() {
      myVal = value;
    });
  }

  String setAnswers(String value) {
    setAns(value);
    return myVal;
  }

  Future showSimpleDialog() async {
    switch (await showDialog(
        context: context,
        builder: (BuildContext context) {
          return new SimpleDialog(
              title: new Text('Yousef Rashed'),
              children: <Widget>[
                new SimpleDialogOption(
                  child: new Text('Yes'),
                  onPressed: () {
                    Navigator.pop(context, setAnswers('Yes'));
                  },
                ),
                new SimpleDialogOption(
                  child: new Text('Maybe'),
                  onPressed: () {
                    Navigator.pop(context, setAnswers('Maybe'));
                  },
                ),
                new SimpleDialogOption(
                  child: new Text('No'),
                  onPressed: () {
                    Navigator.pop(context, setAnswers('NO'));
                  },
                )
              ]);
        })) {
    }
  }

  final GlobalKey<ScaffoldState> scaffoldState = new GlobalKey<ScaffoldState>();
  showSnackBar() {
    scaffoldState.currentState!
        .showSnackBar(new SnackBar(content: new Text('Hello joo')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      key:scaffoldState,
      appBar: AppBar(title: Text('Notification')),
      body: new Container(
        padding: EdgeInsetsDirectional.all(33.0),
        child: new Center(
          
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Card(
                child:new Column(
                  children:<Widget> [

              new FlatButton(
                  onPressed: _showMyDialog,
                  child: new Text('click me (Alert Dia)')),
              new FlatButton(
                  onPressed: showBottomSheet, child: new Text('bottom Dia')),
              new FlatButton(
                  onPressed: showSimpleDialog,
                  child: new Text('Simple dialog')),
              new Text(
                '$myVal',
                style: new TextStyle(color: Colors.blue),
              ),
              new RaisedButton(onPressed:showSnackBar ,child:new Text('click me SnackBar') )
 
                  ],
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
