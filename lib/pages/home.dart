import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {};  // used for storing data from loading page

  @override
  Widget build(BuildContext context) {

    data = ModalRoute.of(context).settings.arguments;
    print(data);
    // setting the data, don't need setstate b/c this is before we return anything

    return Scaffold(
      body: SafeArea(  // now the text won't go into hair line.
        child: Column(
          children: <Widget>[
            FlatButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/location');
              },
              icon: Icon(Icons.edit_location),
              label: Text('Edit Location'),
            ),
          ],
        ),
      )
    );
  }
}












