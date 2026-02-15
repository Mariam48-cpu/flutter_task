import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class PullToRefreshPage extends StatefulWidget {
  const PullToRefreshPage({super.key});

  @override
  State<PullToRefreshPage> createState() => _PullToRefreshPageState();
}

class _PullToRefreshPageState extends State<PullToRefreshPage> {
  List<String> items = List.generate(10,
   (index) => "Item ${index +1}"
   );

  final RefreshController _refreshController = RefreshController(
    initialRefresh: false,
  );

  void _onRefresh() async {
    await Future.delayed(const Duration(seconds: 2));

    setState(() {
      items = List.generate(10, (index) => "New Item ${index +1}");
    });

    _refreshController.refreshCompleted();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      appBar: AppBar(title: const Text("Pull To Refresh")),
      body: Center(
        child: SmartRefresher(
          //  header: WaterDropHeader(),


          // header: ClassicHeader(),


          // header: ClassicHeader(
          //   idleText: "اسحبي لتحديث البيانات",
          //   refreshingText: "جاري التحديث...",
          //   completeText: "تم التحديث",
          //   failedText: "فشل التحديث",
          // ),


          // header: MaterialClassicHeader(),


          // header: BezierHeader(),


          // header: CustomHeader(
          //   builder: (context, mode) {
          //     return Container(
          //       height: 60,
          //       alignment: Alignment.center,
          //       child: Text("Refreshing..." , style: TextStyle(color: const Color.fromARGB(255, 171, 60, 60) , fontSize: 20),),
          //     );
          //   },
          // ),




          controller: _refreshController,
          enablePullDown: true,
          onRefresh: _onRefresh,
          
          child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return ListTile(title: Text(items[index]));
            },
          ),
        ),
      ),
    );
  }
}
