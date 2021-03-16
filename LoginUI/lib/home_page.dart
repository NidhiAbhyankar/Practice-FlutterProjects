import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home page';
  @override
  Widget build(BuildContext context) {
    final alucard = Hero(
      tag : 'hero',
      
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 22.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/login_img.jpg'),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Welcome Demo Homepage',
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );

    final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
        style: TextStyle(fontSize: 16.0, color: Colors.white),textAlign: TextAlign.center,
      ),
    );

    final body = Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue, Colors.lightBlueAccent],
        ),
      ),
      child: Column(
        
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height*0.15,
          ),
        alucard,welcome,lorem
      ],),
    );
    return Scaffold(
      body: body,
    );
  }
}
