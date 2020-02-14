import 'package:flutter/material.dart';

class Alalune extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AlaluneState();
}

class _AlaluneState extends State<Alalune> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: <Widget>[
          alalune(context),
          articles(context),
        ],
      ),
    );
  }
}

Widget alalune(BuildContext context) {
  return Container(
    height: 250.0,
    child: PageView.builder(
      itemCount: 5,
      scrollDirection: Axis.horizontal,
      // shrinkWrap: true,
      
      itemBuilder: (context, index) => Stack(
        children: <Widget>[
          Image.asset(
            'assets/imgs/slide_one.jpg',
            fit: BoxFit.fitWidth,
          ),
          Container(
            height: 250.0,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFFFFFFFF).withOpacity(0.2),
                  Color(0xFF212121).withOpacity(0.7),
                ],
                stops: [0.1, 1.0],
              ),
            ),
          ),
          Positioned(
            width: MediaQuery.of(context).size.width,
            bottom: 5.0,
            child: Column(
              children: <Widget>[
                Text(
                  'NEWS MODE',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                Text(
                  'Un amour de montre by Fendi',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 23.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}

Widget articles(BuildContext context) {
  return ListView.builder(
    itemCount: 10,
    physics: NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    itemBuilder: (context, index) => Container(
      margin: EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0, bottom: 4.0),
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: Colors.red,
        boxShadow: [
          BoxShadow(
            color: Colors.black54.withOpacity(0.05),
            spreadRadius: 1.0,
            blurRadius: 5.0,
            offset: Offset(0.0, 8.0),
          ),
        ],
        // borderRadius: BorderRadius.only(
        //   bottomLeft: Radius.circular(15.0),
        //   bottomRight: Radius.circular(15.0),
        // ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Image.asset(
              'assets/imgs/slide_one.jpg',
            ),
          ),
          Expanded(
            flex: 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Title',
                  style: TextStyle(
                      color: Color(0xFFF6C232),
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Labore id elit occaecat proident. Do adipisicing consectetur sunt laborum ex. Ex anim aliquip incididunt aute ut quis exercitation est. Dolor et pariatur proident nostrud ut reprehenderit mollit enim Lorem Lorem ullamco enim ad cillum. Amet minim ex nisi cillum ex. Veniam mollit deserunt anim commodo consectetur mollit dolore et est. Et cupidatat nostrud voluptate ipsum dolor velit magna cupidatat.',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}
