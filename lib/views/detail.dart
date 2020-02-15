import 'package:fltr_graziamaroc/model/article.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Detail extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Detail();
}

class _Detail extends State<Detail> {
  List<Article> _listArticles;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _listArticles = [
      Article('Un amour de montre by Fendi', 'assets/imgs/slide_one.jpg'),
      Article('Escapade romantique à Mazagan', 'assets/imgs/slide_two.jpg'),
      Article('La robe dont tout le monde parle encore…',
          'assets/imgs/slide_three.jpg'),
      Article('Un amour de montre by Fendi', 'assets/imgs/slide_one.jpg'),
      Article('Escapade romantique à Mazagan', 'assets/imgs/slide_two.jpg'),
      Article('La robe dont tout le monde parle encore…',
          'assets/imgs/slide_three.jpg'),
      Article('Un amour de montre by Fendi', 'assets/imgs/slide_one.jpg'),
      Article('Escapade romantique à Mazagan', 'assets/imgs/slide_two.jpg'),
      Article('La robe dont tout le monde parle encore…',
          'assets/imgs/slide_three.jpg'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: NestedScrollView(
          // controller: _ctrlMainScroll,
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: ScreenUtil().setHeight(500.0),
                floating: false,
                pinned: false,
                backgroundColor: Color(0xFF212121),
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  // titlePadding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(100.0)),
                  background: Stack(
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: Image.asset(
                          "assets/imgs/slide_one.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xFF212121).withOpacity(0.3),
                              Color(0xFF212121).withOpacity(1),
                            ],
                            stops: [0.3, 1.0],
                          ),
                        ),
                        child: Container(
                          padding: EdgeInsets.all(ScreenUtil().setWidth(20.0)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(
                                    left: ScreenUtil().setWidth(20.0),
                                    top: ScreenUtil().setWidth(10.0)),
                                child: Text(
                                  'Un amour de montre by Fendi',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: ScreenUtil().setWidth(46.0),
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                              Icon(
                                Icons.share,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              // margin: EdgeInsets.all(ScreenUtil().setWidth(20.0)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                        left: ScreenUtil().setWidth(20.0),
                        top: ScreenUtil().setWidth(20.0)),
                    child: Row(
                      children: <Widget>[
                        Text(
                          '1 day ago | ',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: ScreenUtil().setWidth(30.0),
                            fontWeight: FontWeight.bold,
                            color: Colors.black45,
                          ),
                        ),
                        Text(
                          'NEWS MODE',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: ScreenUtil().setWidth(30.0),
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(20.0),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: ScreenUtil().setWidth(20.0), bottom: ScreenUtil().setWidth(10.0)),
                    child: Text(
                        'Laborum eu quis nisi eiusmod quis qui sint veniam occaecat. Lorem magna ullamco duis aliquip ipsum. Sit voluptate eu Lorem elit magna non esse laboris. Mollit exercitation culpa cupidatat laborum aliqua. Eu ullamco veniam sint ipsum ex labore mollit velit dolore esse. In nisi dolore occaecat laborum esse est anim eu. Deserunt voluptate exercitation commodo ad eiusmod quis nisi qui velit Lorem est veniam eu velit.'),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(20.0),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: ScreenUtil().setWidth(20.0), bottom: ScreenUtil().setWidth(10.0)),
                    child: Text(
                        'Laborum eu quis nisi eiusmod quis qui sint veniam occaecat. Lorem magna ullamco duis aliquip ipsum. Sit voluptate eu Lorem elit magna non esse laboris. Mollit exercitation culpa cupidatat laborum aliqua. Eu ullamco veniam sint ipsum ex labore mollit velit dolore esse. In nisi dolore occaecat laborum esse est anim eu. Deserunt voluptate exercitation commodo ad eiusmod quis nisi qui velit Lorem est veniam eu velit.'),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(20.0),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: ScreenUtil().setWidth(20.0), bottom: ScreenUtil().setWidth(10.0)),
                    child: Text(
                        'Laborum eu quis nisi eiusmod quis qui sint veniam occaecat. Lorem magna ullamco duis aliquip ipsum. Sit voluptate eu Lorem elit magna non esse laboris. Mollit exercitation culpa cupidatat laborum aliqua. Eu ullamco veniam sint ipsum ex labore mollit velit dolore esse. In nisi dolore occaecat laborum esse est anim eu. Deserunt voluptate exercitation commodo ad eiusmod quis nisi qui velit Lorem est veniam eu velit.'),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(20.0),
                  ),
                  Container(
                    height: ScreenUtil().setHeight(30.0),
                    color: Colors.black12.withAlpha(8),
                  ),
                  MoreArticles(_listArticles)
                ],
              ),
            ),
          )),
    );
  }
}

Widget MoreArticles(List<Article> _listArticles) {
  return Container(
    color: Colors.white,
    padding: EdgeInsets.all(ScreenUtil().setWidth(20.0)),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          child: Text(
            'Learn More',
            style: TextStyle(
              fontSize: ScreenUtil().setWidth(40.0),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ListView.separated(
            separatorBuilder: (BuildContext context, int index) => Divider(
                  // height: 12.0,
                  thickness: 1.0,
                ),
            itemCount: _listArticles.length,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => Container(
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            flex: 4,
                            child: Column(
                              children: <Widget>[
                                Text(
                                  _listArticles[index].title,
                                  style: TextStyle(
                                    fontSize: ScreenUtil().setWidth(40.0),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  'Ad qui veniam incididunt sunt enim in occaecat adipisicing sit. Cupidatat excepteur ullamco nisi mollit exercitation sint occaecat laboris sunt fugiat excepteur exercitation nulla in. Quis id pariatur ea ut nisi. Mollit id magna nulla enim. Commodo eiusmod ullamco occaecat veniam anim irure qui occaecat voluptate mollit ex.',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: ScreenUtil().setWidth(30.0),
                                    fontWeight: FontWeight.w300,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Image.asset(
                              _listArticles[index].image,
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            '4 days ago . 8 min read ',
                            style: TextStyle(
                              fontSize: ScreenUtil().setWidth(26.0),
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Icon(Icons.save_alt)
                        ],
                      )
                    ],
                  ),
                ))
      ],
    ),
  );
}
