import 'package:fltr_graziamaroc/views/a_la_lune.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Colors.white),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          // SliverAppBar(
          //   stretch: true,
          //   centerTitle: true,
          //   floating: true,
          //   pinned: false,

          //   // flexibleSpace: FlexibleSpaceBar(
          //   //   // height: 200.0,
          //   //   // titlePadding: EdgeInsets.symmetric(vertical: 15.0),

          //   //   centerTitle: true,
          //   //   // color: Colors.red,
          //   // title: Container(
          //   //   color: Colors.red,
          //   //   child: Image.asset(
          //   //     'assets/imgs/logo-graziamaroc.png',
          //   //     // width: 50.0,
          //   //     height: 50.0,
          //   //   ),
          //   // ),
          //   // ),
          // )
        ];
      },
      body: DefaultTabController(
        length: 7,
        child: Scaffold(
          appBar: AppBar(
            titleSpacing: 0.0,
            bottom: TabBar(
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
              width: 200.0,
            ),
            centerTitle: true,
          ),
          body: TabBarView(
            children: [
              Alalune(),
              Text('Ola 2'),
              Text('Ola 3'),
              Text('Ola 3'),
              Text('Ola 3'),
              Text('Ola 3'),
              Text('Ola 3'),
            ],
          ),
        ),
      ),
    );
  }
}

Widget Example_1() {
  return DefaultTabController(
    length: 7,
    child: Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(300.0),
        child: AppBar(
          flexibleSpace: Container(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20.0,
                ),
                Image.asset(
                  'assets/imgs/logo-graziamaroc.png',
                  width: 200.0,
                ),
                Expanded(
                  child: PageView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Text('Ola'),
                  ),
                )
              ],
            ),
          ),
          bottom: TabBar(
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
          // title: Image.asset('assets/imgs/logo-graziamaroc.png'),
          centerTitle: true,
          titleSpacing: 125.0,
        ),
      ),
      body: TabBarView(
        children: [
          // DialledCallsPage(),
          // MissedCallsPage(),
          // ReceivedCallsPage(),
          Text('Ola 1'),
          Text('Ola 2'),
          Text('Ola 3'),
          Text('Ola 3'),
          Text('Ola 3'),
          Text('Ola 3'),
          Text('Ola 3'),
        ],
      ),
    ),
  );
}
