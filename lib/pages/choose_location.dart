import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  int counter = 0;

  void getData() async {
    // Simulate a delay extracting data
    String firstName = await Future.delayed(Duration(seconds: 3), () {
      return 'yoshi';
    });
//    print('goomba');
    // yoshi gets printed before goomba: does not wait for future

    String lastName = await Future.delayed(Duration(seconds: 2), () {
      return 'mario';
    });
    // mario comes first

    print('$firstName + $lastName');
  }

  @override
  void initState() {
    // legend has it initState() is where you use 3rd party API.
    super.initState();
    print('initState func ran');
    getData();
  }

  @override
  Widget build(BuildContext context) {
    print('build func ran');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text("Choose a location"),
        centerTitle: true,
        elevation: 0,
      ),
      body: RaisedButton(
        onPressed: () {
          setState(() {
            counter += 1;
          });
        },
        child: Text('counter is $counter'),
      )
    );
  }
}










