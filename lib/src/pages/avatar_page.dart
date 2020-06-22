import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://i.annihil.us/u/prod/marvel/html_pages_assets/excelsior/qa/images/stan-lee-masthead-2-f62b92b82e.jpg'),
              radius: 22.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown,
            ),
          ),
        ],
      ),
      body: Center(
        child: FadeInImage(
          placeholder: AssetImage('assets/original.gif'),
          image: NetworkImage('https://www.duna.cl/media/2020/04/stan.jpg'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}