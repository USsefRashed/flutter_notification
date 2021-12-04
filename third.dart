import 'package:flutter/material.dart';

class Third extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

class _ThirdState extends State<Third> {
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
            new Text('Hello third Page')
            ,new FlatButton(onPressed: null, child: new Text('Previous page'))

          ],
        )
      ),
    );
  }
}
