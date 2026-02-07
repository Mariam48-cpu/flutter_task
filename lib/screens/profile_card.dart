import 'package:flutter/material.dart';

class FirstTask extends StatelessWidget {
   FirstTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color.fromARGB(255, 3, 4, 18),
      appBar: AppBar(
        title: Center(
          child: Text(
            'My First App',
            
            style: TextStyle(
              fontFamily: 'Pacifico',
              fontSize: 26.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CircleAvatar(
              radius: 160,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 150,
                backgroundImage: AssetImage('images/circle_imag.png'),
              ),
            ),
          ),
          Center(
            child: Text(
              'Mariam Sanad',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32.0,
                fontFamily: 'Pacifico',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            'FLUTTER DEVELOPER',
            style: TextStyle(
              color: Color(0xFF6C8090),
              fontSize: 20.0,
              letterSpacing: 2.5,
              fontWeight: FontWeight.bold,
            ),
          ),
          Divider(
            color: Color(0xFF6C8090),
            thickness: 2,
            indent: 60,
            endIndent: 60,
            height: 20.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              height: 65.0,
              child: Row(
                children: [
                  Spacer(flex: 2),
                  Icon(Icons.phone, size: 28.0),
                  Spacer(flex: 1),
                  Text(
                    '   (+20)1234567890',
                    style: TextStyle(
                      fontSize: 20.0,
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(flex: 4),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              height: 65.0,
              child: Row(
                children: [
                  Spacer(flex: 2),
                  Icon(Icons.email, size: 28.0),
                  Spacer(flex: 1),
                  Text(
                    ' mariemsanad48@gmail.com',
                    style: TextStyle(
                      fontSize: 20.0,
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(flex: 1),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
