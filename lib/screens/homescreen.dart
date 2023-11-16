// import 'package:camp/Widgets/text_widget.dart';
// import 'package:camp/data.dart';
// import 'package:camp/screens/details_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   _HomeState createState() => new _HomeState();
// }

// class _HomeState extends State<HomeScreen> {
//   List<String> tags = ['Tag1', 'Tag2', 'Tag3', 'Tag4'];
//   List<String> selectedTags = [];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         bottomOpacity: 0.0,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: CustomScrollView(
//           slivers: <Widget>[
//             SliverToBoxAdapter(
//               child: Container(
//                 child: Container(
//                   height: 50,
//                   child: ListView.builder(
//                     scrollDirection: Axis.horizontal,
//                     itemCount: tags.length,
//                     itemBuilder: (context, index) {
//                       return Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: FilterChip(
//                           label: Text(tags[index]),
//                           selected: selectedTags.contains(tags[index]),
//                           onSelected: (bool selected) {
//                             setState(() {
//                               if (selected) {
//                                 selectedTags.add(tags[index]);
//                               } else {
//                                 selectedTags.remove(tags[index]);
//                               }
//                             });
//                           },
//                         ),
//                       );
//                     },
//                   ),
//                 ),
//               ),
//             ),
//             SliverToBoxAdapter(
//                 child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextWidget(
//                   "Best Places", 25, Colors.black87, FontWeight.w700),
//             )),
//             SliverStaggeredGrid.countBuilder(
//               crossAxisCount: 2,
//               itemBuilder: (BuildContext context, int index) {
//                 return InkWell(
//                   onTap: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => DetailScreen(Images[index])));
//                   },
//                   child: Container(
//                     margin: EdgeInsets.all(10),
//                     decoration: BoxDecoration(
//                       color: Colors.grey,
//                       borderRadius: BorderRadius.circular(16),
//                       image: DecorationImage(
//                         // image: NetworkImage(Images[index]),
//                         image: NetworkImage(
//                             'https://vl-prod-static.b-cdn.net/system/images/000/640/955/54fa14ca9685bf1849283825fc2d041f/banner/camping-in-maharashtra.jpg?1675225487'),
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                     padding: EdgeInsets.all(10),
//                     // Replace with your Flutter logo image
//                     child: const Stack(
//                       children: [
//                         Positioned(
//                             top: 0.0,
//                             right: 2.0,
//                             child: CircleAvatar(
//                               maxRadius: 16.5,
//                               backgroundColor: Colors.black38,
//                               child: Icon(
//                                 Icons.favorite_outline_rounded,
//                                 color: Colors.white60,
//                               ),
//                             )),
//                         Positioned(
//                             bottom: 0.0,
//                             child: Text(
//                               "Nature",
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 18,
//                                   fontWeight: FontWeight.w600),
//                             ))
//                       ],
//                     ),
//                   ),
//                 );
//               },
//               staggeredTileBuilder: (int index) =>
//                   StaggeredTile.count(1, index.isEven ? 1.5 : 1.2),
//               // itemCount: Images.length,
//               itemCount: 20,
//             ),
//             const SliverToBoxAdapter(
//               child: SizedBox(
//                 height: 300, // Set the height to 300
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:camp/Widgets/text_widget.dart';
import 'package:camp/data.dart';
import 'package:camp/screens/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<HomeScreen> {
  static const List<String> tags = ['Tag1', 'Tag2', 'Tag3', 'Tag4'];
  List<String> selectedTags = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        bottomOpacity: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: Container(
                height: 50,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: tags.length,
                  separatorBuilder: (context, index) => SizedBox(width: 8.0),
                  itemBuilder: (context, index) => FilterChip(
                    label: Text(tags[index]),
                    selected: selectedTags.contains(tags[index]),
                    onSelected: (bool selected) {
                      setState(() {
                        if (selected) {
                          selectedTags.add(tags[index]);
                        } else {
                          selectedTags.remove(tags[index]);
                        }
                      });
                    },
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextWidget(
                    "Best Places", 25, Colors.black87, FontWeight.w700),
              ),
            ),
            SliverStaggeredGrid.countBuilder(
              crossAxisCount: 2,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailScreen(Images[index])),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://vl-prod-static.b-cdn.net/system/images/000/640/955/54fa14ca9685bf1849283825fc2d041f/banner/camping-in-maharashtra.jpg?1675225487'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    padding: EdgeInsets.all(10),
                    child: const Stack(
                      children: [
                        Positioned(
                          top: 0.0,
                          right: 2.0,
                          child: CircleAvatar(
                            maxRadius: 16.5,
                            backgroundColor: Colors.black38,
                            child: Icon(
                              Icons.favorite_outline_rounded,
                              color: Colors.white60,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0.0,
                          child: Text(
                            "Nature",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              staggeredTileBuilder: (int index) =>
                  StaggeredTile.count(1, index.isEven ? 1.5 : 1.2),
              itemCount: 20,
            ),
            const SliverToBoxAdapter(
              child: SizedBox(height: 300),
            ),
          ],
        ),
      ),
    );
  }
}
