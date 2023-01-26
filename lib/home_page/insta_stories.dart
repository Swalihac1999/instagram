// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class StoryPage extends StatelessWidget {
  StoryPage({super.key});
  final category = [
    {
      'name': 'swalih',
      'image':
          'https://i.pinimg.com/originals/0c/7f/91/0c7f91d5552ee4b454636538b692e673.jpg'
    },
    {
      'name': 'alwi',
      'image':
          'https://static.remove.bg/remove-bg-web/221525818b4ba04e9088d39cdcbd0c7bcdfb052e/assets/start_remove-c851bdf8d3127a24e2d137a55b1b427378cd17385b01aec6e59d5d4b5f39d2ec.png'
    },
    {
      'name': 'sakshi',
      'image':
          'https://blog.hootsuite.com/wp-content/uploads/2020/02/Image-copyright-556x556.png'
    },
    {
      'name': 'nahmi',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnnu6obVk9X7KpF7ddIVK0Xukk7GK5uWC1GA&usqp=CAU'
    },
    {
      'name': 'wafa',
      'image':
          'https://www.adobe.com/express/feature/image/media_1b8b30dbb41a40550d7bacf515d27d946b8442157.png?width=750&format=png&optimize=medium'
    },
    {
      'name': 'sakshi',
      'image':
          'https://blog.hootsuite.com/wp-content/uploads/2020/02/Image-copyright-556x556.png'
    },
    {
      'name': 'swalih',
      'image':
          'https://i.pinimg.com/originals/0c/7f/91/0c7f91d5552ee4b454636538b692e673.jpg'
    },
    {
      'name': 'wafa',
      'image':
          'https://www.adobe.com/express/feature/image/media_1b8b30dbb41a40550d7bacf515d27d946b8442157.png?width=750&format=png&optimize=medium'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: category.length,
            itemBuilder: (context, index) {
              if (index == 0) {
                return Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      ClipOval(
                        child: Image.network(
                          category[index].values.last,
                          width: 50,
                          height: 50,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Stack(children: [
                        Expanded(child: Text(category[index].values.first)),
                        Icon(
                          Icons.add,
                          size: 14.0,
                          color: Colors.blue,
                        ),
                      ]),
                      // Expanded(child: Text(category[index].values.first)),
                    ],
                  ),
                );
              } else {
                return Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      ClipOval(
                        child: Image.network(
                          category[index].values.last,
                          width: 50,
                          height: 50,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Expanded(child: Text(category[index].values.first)),
                    ],
                  ),
                );
              }
            }),
      ),
    );
  }
}
    //  ListView.builder(
//       itemCount: category.length,
//       itemBuilder: ( context,  index) {
//         return Padding(padding: EdgeInsets.all(8),
//         child: Column(
//           children: [
//             ClipOval(
//               child: Image.network(
//                 category[index].values.last,
//                 width: 50,
//                 height: 50,
//                 fit: BoxFit.fill,
//               ),
//             ),
//             Expanded(child: Text(category[index].values.first))
//           ],
//         ),
//         );
//       },
//     );
//   }
// }

// class InstaStories extends StatelessWidget {
//   final topText = Row(
//     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     children: <Widget>[
//       // ignore: prefer_const_constructors
//       Text(
//         "Stories",
//         style: TextStyle(fontWeight: FontWeight.bold),
//       ),
//       Row(
//         children: <Widget>[
//           Icon(Icons.play_arrow),
//           Text("Watch All", style: TextStyle(fontWeight: FontWeight.bold))
//         ],
//       )
//     ],
//   );
//   @override

//   final stories = Expanded(
//     child: Padding(
//       padding: const EdgeInsets.only(top: 8.0),
//       child: ListView.builder(
//         scrollDirection: Axis.horizontal,
//         itemCount: category.length,
//         itemBuilder: (context, index) => Stack(
//               alignment: Alignment.bottomRight,
//               children: <Widget>[
//                 Container(
//                   width: 60.0,
//                   height: 60.0,
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     image: DecorationImage(
//                         fit: BoxFit.fill,
//                         // ignore: prefer_const_constructors
//                         image: NetworkImage(
//                             "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg")),
//                   ),
//                   margin: const EdgeInsets.symmetric(horizontal: 8.0),
//                 ),
//                 index == 0
//                     ? Positioned(
//                         right: 10.0,
//                         child: CircleAvatar(
//                           backgroundColor: Colors.blueAccent,
//                           radius: 10.0,
//                           child: Icon(
//                             Icons.add,
//                             size: 14.0,
//                             color: Colors.white,
//                           ),
//                         ))
//                     : Container()
//               ],
//             ),
//       ),
//     ),
//   );

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.all(16.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         mainAxisAlignment: MainAxisAlignment.start,
//         mainAxisSize: MainAxisSize.min,
//         children: <Widget>[
//           topText,
//           stories,
//         ],
//       ),
//     );
//   }
// }
