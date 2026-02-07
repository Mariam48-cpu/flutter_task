import 'package:flutter/material.dart';

class SecondTask extends StatelessWidget {
   SecondTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Color.fromARGB(255, 115, 163, 218),
        title: Center(
          child: Text(
            'Profile Card',
            style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration:  BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF052850), Color(0xFF166D98), Color(0xFF28A0D6)],
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 350,
              height: 470,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 121, 161, 236),
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
            ),
            Container(
              width: 300,
              height: 430,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 70,
                        backgroundColor: Color.fromARGB(255, 117, 157, 241),
                        child: CircleAvatar(
                          radius: 65,
                          backgroundImage: AssetImage(
                            'images/WhatsApp Image 2026-02-03 at 01.19.24.jpeg',
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 5,
                        right: 5,
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: Color.fromARGB(255, 103, 223, 137),
                        ),
                      ),
                    ],
                  ),
                  Center(
                    child: Text(
                      'Mariam Sanad',
                      style: TextStyle(
                        fontSize: 32.0,
                        fontFamily: 'Pacifico',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    'Flutter Developer',
                    style: TextStyle(
                      color: Color(0xFF6C8090),
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding:  EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Spacer(flex: 1),
                          Icon(Icons.email, color: Color(0xFF166D98), size: 30),
                          Spacer(flex: 1),
                          Icon(
                            Icons.facebook_outlined,
                            color: Color(0xFF166D98),
                            size: 30,
                          ),
                          Spacer(flex: 1),
                          Icon(Icons.phone, color: Color(0xFF166D98), size: 30),
                          Spacer(flex: 1),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
