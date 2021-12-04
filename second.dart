import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.black45,
        title: new Text('Navigation'),
      ),
      body: 
      new Container(
        padding: EdgeInsets.all(33.0),
        child:new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget> [
            new Text('Hello second Page')
            ,new FlatButton(onPressed: null, child: new Text('Next page'))
               ,new FlatButton(onPressed: null, child: new Text('Previous page'))
          ],
        )
      ),
    );
  }
}
