import 'package:flutter/material.dart';
import 'package:five_star_rating_widget/StarRatingWidget.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
         primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Five Star Rating Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body:new ListView(
        children: <Widget>[
          new ListTile(
            title: new Text('hoge'),
            trailing: StarRatingWidget(),
          ),
          new ListTile(
            title: new Text('foo'),
            trailing: StarRatingWidget(),
          ),
          new ListTile(
            title: new Text('bar'),
            trailing: StarRatingWidget(),
          ),
        ],
      ),
    );
  }
}
