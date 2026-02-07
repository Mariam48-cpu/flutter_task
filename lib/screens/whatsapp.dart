import 'package:flutter/material.dart';

class ThirdTask extends StatelessWidget {
  ThirdTask({super.key}); 

  final List<String> tabs = [
    'All',
    'Unread',
    'Groups',
    'Friends',
    'Collage',
    'Family',
    'Commerce',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'WhatsApp',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: 'Roboto',
            fontSize: 25,
          ),
        ),
        backgroundColor: Color(0xFF075E54),
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          Icon(Icons.search),
          SizedBox(width: 20),
          Icon(Icons.more_vert),
          SizedBox(width: 10),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFF075E54),
        child: Icon(Icons.chat, color: Colors.white),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color.fromARGB(255, 242, 250, 250), Color.fromARGB(255, 235, 247, 245), Color(0xFFBFE6DD)],
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 70,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: tabs.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    margin: EdgeInsets.symmetric(horizontal: 7, vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Color(0xFF075E54), width: 2),
                    ),
                    child: Center(
                      child: Text(
                        tabs[index],
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF075E54).withOpacity(.7),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child: ListView.separated(
                itemCount: 15,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(
                        "images/WhatsApp Image 2026-02-03 at 01.19.24.jpeg",
                      ),
                    ),
                    title: Text(
                      'Ahmed Mohamed',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    subtitle: Text('السلام عليكم يا هندسه'),
                    trailing: Text(
                      '10:30 PM',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  );
                },
                separatorBuilder: (context, index) => Divider(
                  color: Colors.grey,
                  height: 1,
                  indent: 70,
                  endIndent: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
