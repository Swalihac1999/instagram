// ignore_for_file: prefer_const_constructors, sort_child_properties_last, use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/home_page/insta_stories.dart';
import 'package:instagram/model/homePage_model.dart';

class PostsScreen extends StatefulWidget {
  @override
  _PostsScreenState createState() => _PostsScreenState();
}

class _PostsScreenState extends State<PostsScreen> {
  bool isPressed = false;
  List<HomeDetails> posts = [
        
    HomeDetails(
        image:
            'https://static01.nyt.com/images/2019/04/16/sports/16onsoccerweb-2/merlin_153612873_5bb119b9-8972-4087-b4fd-371cab8c5ba2-articleLarge.jpg?quality=75&auto=webp&disable=upscale',
        name: 'messilovers',
        post: 'https://images.indianexpress.com/2022/10/Lionel-Messi.jpg',
        icon: '',
        likes: '  "Liked by shukoor, pk and 28,331 others",'),
    
    HomeDetails(
        image:
            'https://static01.nyt.com/images/2019/04/16/sports/16onsoccerweb-2/merlin_153612873_5bb119b9-8972-4087-b4fd-371cab8c5ba2-articleLarge.jpg?quality=75&auto=webp&disable=upscale',
        name: 'messilovers',
        post: 'https://images.indianexpress.com/2022/10/Lionel-Messi.jpg',
        icon: '',
        likes: '  "Liked by shukoor, pk and 28,331 others",'),
    HomeDetails(
        image:
            'https://w0.peakpx.com/wallpaper/730/414/HD-wallpaper-dpz-dp-profile-pic-thumbnail.jpg',
        name: 'seera',
        post:
            'https://www.shortstack.com/wp-content/uploads/2019/08/ig-algorith-featured.jpg',
        icon: '',
        likes: 'Liked by hasif, shafi and 8,331 others",'),
    HomeDetails(
      image:
          'https://img.mensxp.com/media/content/2022/Oct/HEADER_635939697e3ea.jpeg?w=820&h=540&cc=1',
      name: 'nabeel',
      post:
          'https://i.pinimg.com/originals/bc/0a/43/bc0a43402120386fe666e3ff358e8589.jpg',
      icon: '',
    ),
    HomeDetails(
      image:
          'https://www.thenewsminute.com/sites/default/files/styles/news_detail/public/Mammootty_viral_140821_1200.jpg?itok=n5SVax06',
      name: 'peelthit paara',
      post:
          'https://i.ytimg.com/vi/L_nSH3dLTIc/hq720.jpg?sqp=-oaymwEjCOgCEMoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE=&rs=AOn4CLBMA9kfoEEqo9YNUgg_XfZSQ1JdIg',
      icon: '',
      likes: "Liked by pawankumar, pk and 528,331 others",
    ),
     HomeDetails(
        image:
            'https://static01.nyt.com/images/2019/04/16/sports/16onsoccerweb-2/merlin_153612873_5bb119b9-8972-4087-b4fd-371cab8c5ba2-articleLarge.jpg?quality=75&auto=webp&disable=upscale',
        name: 'messilovers',
        post: 'https://images.indianexpress.com/2022/10/Lionel-Messi.jpg',
        icon: '',
        likes: '  "Liked by shukoor, pk and 28,331 others",'),
  ];

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (context, index) => index == 0
          ? SizedBox(
              child: StoryPage(),
              height: deviceSize.height * 0.15,
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  // padding: const EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
                  padding: EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          SizedBox(
                            height: 40,
                            width: 40,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: Image.network(
                                  '${posts.elementAt(index).image}'),
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            '${posts.elementAt(index).name}',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      IconButton(
                        icon: Icon(Icons.more_vert),
                        onPressed: null,
                      )
                    ],
                  ),
                ),
                Flexible(
                  fit: FlexFit.loose,
                  child: Image.network(
                    '${posts.elementAt(index).post}',
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(isPressed
                                ? Icons.favorite
                                : FontAwesomeIcons.heart),
                            color: isPressed ? Colors.red : Colors.black,
                            onPressed: () {
                              setState(() {
                                isPressed = !isPressed;
                              });
                            },
                          ),
                          SizedBox(
                            width: 16.0,
                          ),
                          Icon(
                            FontAwesomeIcons.comment,
                          ),
                          SizedBox(
                            width: 16.0,
                          ),
                          Icon(FontAwesomeIcons.paperPlane),
                        ],
                      ),
                      Icon(FontAwesomeIcons.bookmark)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    '${posts.elementAt(index).likes}',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  "https://pbs.twimg.com/profile_images/916384996092448768/PF1TSFOE_400x400.jpg")),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Add a comment...",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child:
                      Text("1 Day Ago", style: TextStyle(color: Colors.grey)),
                )
              ],
            ),
    );
  }
}
