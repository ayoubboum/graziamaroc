import 'package:fltr_graziamaroc/views/a_la_lune.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MyHomePage();
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(vsync: this, length: 7, initialIndex: 0);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          titleSpacing: 0.0,
          bottom: TabBar(
            controller: _tabController,
            labelColor: Colors.black,
            tabs: [
              Tab(text: "A la lune"),
              Tab(text: "Mode"),
              Tab(text: "Beauté"),
              Tab(text: "People"),
              Tab(text: "Culture"),
              Tab(text: "Société"),
              Tab(text: "Lifestyle"),
            ],
            isScrollable: true,
            indicatorColor: Color(0xFFFFDD00),
          ),
          title: Image.asset(
            'assets/imgs/logo-graziamaroc.png',
            width: ScreenUtil().setWidth(400.0),
          ),
          centerTitle: true,
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            Alalune(),
            Center(child: Text('To be continued')),
            Center(child: Text('To be continued')),
            Center(child: Text('To be continued')),
            Center(child: Text('To be continued')),
            Center(child: Text('To be continued')),
            Center(child: Text('To be continued')),
          ],
        ),
      ),
    );
  }
}
