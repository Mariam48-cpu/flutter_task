import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class ThirdTask extends StatefulWidget {
  const ThirdTask({super.key});

  @override
  State<ThirdTask> createState() => _ThirdTaskState();
}

class _ThirdTaskState extends State<ThirdTask> {
  final List<String> tabs = [
    'All',
    'Unread',
    'Groups',
    'Friends',
    'Collage',
    'Family',
    'Commerce',
  ];

  List<int> chats = List.generate(15, (index) => index);

  final RefreshController _refreshController = RefreshController(
    initialRefresh: false,
  );

  //  Pull Down
  void _onRefresh() async {
    await Future.delayed(const Duration(seconds: 2));

    setState(() {
      chats = List.generate(15, (index) => index);
    });

    _refreshController.refreshCompleted();
    _refreshController.resetNoData();
  }

  //  Pull Up 
  void _onLoading() async {
    await Future.delayed(const Duration(seconds: 2));

    if (chats.length >= 25) {
      _refreshController.loadNoData();
    } else {
      setState(() {
        int currentLength = chats.length;
        chats.addAll(List.generate(5, (index) => currentLength + index));
      });
      _refreshController.loadComplete();
    }
  }

  @override
  void dispose() {
    _refreshController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'WhatsApp',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        backgroundColor: const Color(0xFF075E54),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFF075E54),
        child: const Icon(Icons.chat, color: Colors.white),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFFFFFFF), Color(0xFFEBF7F5), Color(0xFFBFE6DD)],
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 70,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: tabs.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 10,
                    ),
                    margin: const EdgeInsets.symmetric(
                      horizontal: 7,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: const Color(0xFF075E54),
                        width: 2,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        tabs[index],
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF075E54).withOpacity(.8),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            /// Smart Refresher
            Expanded(
              child: SmartRefresher(
                controller: _refreshController,
                enablePullDown: true,
                enablePullUp: true,
                onRefresh: _onRefresh,
                onLoading: _onLoading,
                header: const WaterDropHeader(),
                footer: const ClassicFooter(
                  idleText: "scroll to reload next",
                  loadingText: "loading..",
                  canLoadingText: "سيتم التحميل  ",
                  noDataText: " No more chats",
                ),
                child: ListView.separated(
                  itemCount: chats.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: const CircleAvatar(
                        backgroundImage: AssetImage(
                          "images/WhatsApp Image 2026-02-03 at 01.19.24.jpeg",
                        ),
                      ),
                      title: const Text(
                        'Ahmed Mohamed',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      subtitle: Text('السلام عليكم يا هندسه'),
                      trailing: const Text(
                        '10:30 PM',
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) =>
                      SizedBox(height: 1,)
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
