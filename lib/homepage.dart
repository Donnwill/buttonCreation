import 'package:flutter/material.dart';
import './stateful.dart';

class HomePage extends StatelessWidget {
  final List<int> bottom = [0];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              IconButton(
                padding: EdgeInsets.only(right: 50),
                icon: Icon(Icons.menu_rounded),
                tooltip: 'Menu',
                iconSize: 40,
                color: Colors.white,
                onPressed: (){},

              ),
              Container(
                padding: EdgeInsets.only(right: 100),
                child: Text('ACRA'),
              )
            ],
          )),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
              delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return Container(
                    child: NewMe('See Me Again'),
                  );
                },
                childCount: bottom.length,
              ))
        ],
      ),
    );
  }
}