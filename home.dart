import 'package:flutter/material.dart';
import 'newsfeeds.dart';

void main() => runApp(new HomePage());

class HomePage extends StatelessWidget {
  static String tag = 'home-page';
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: new Text("News App", style: new TextStyle(color: Colors.white)),
      ),
      body: new SafeArea(
          child: new Column(
            children: [
              new Expanded(
                flex: 1,
                child: new Container(
                  width: width,
                  color: Colors.white,
                  child: new Container(

                      child: new GestureDetector(
                        child: new Card(
                          elevation: 3.0,
                          child: Column(
                            children: <Widget>[
                              Icon(Icons.touch_app),
                              new Padding(
                                padding: EdgeInsets.all(30.0),
                                child: Text(
                                  "Touch here for headlines",
                                  style: TextStyle(
                                      fontSize: 20.0, color: Colors.black),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        onTap: () {
                          var id = 1;
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                builder: (BuildContext context) =>
                                new NewsFeedPage(id),
                              ));
                        },
                      )),


                ),
              ),
            ],
          )),
    );
  }
}