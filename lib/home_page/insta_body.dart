// ignore_for_file: use_key_in_widget_constructors, unnecessary_new

import 'package:flutter/material.dart';
import 'package:instagram/home_page/postScreen.dart';

class InstaBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        // Expanded(flex: 1, child: new InstaStories()),
        Flexible(child: PostsScreen())
      ],
    );
  }
}
