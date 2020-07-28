import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  String time = 'loading';

//  void getData() async {
//    // read json file like this:
//    Response response = await get('https://jsonplaceholder.typicode.com/todos/1');
//    Map data = jsonDecode(response.body);
//    print(data);
//    print(data['title']);
//  }

  void setupWorldTime() async {
    WorldTime instance = WorldTime(location: 'Berlin', flag: 'germany.png', url:'Europe/Berlin');
    await instance.getTime();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time
    });


//    print(instance.time);
//    setState(() {
//      time = instance.time;
//    });
    // print(instance.time) is not going to work b/c getTime is async
    // however, you can get a return type in getTime() and use await
    // you can also use future to wait on void func.
    // Refer to #28 2rd half.

    // BTW, when you extract data, you can use
    //   try{
    //     ...
    //   } catch(e) {
    //     print('caught error: $e');
    //     time = 'could not get time data.'
    //   }
    // to catch errors.
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50),
        child: Text(time),
      ),
    );
  }
}








