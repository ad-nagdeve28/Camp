import 'package:camp/components/panel.dart';
import 'package:camp/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import '../Widgets/text_widget.dart';
import '../components/rating.dart';

class DetailScreen extends StatefulWidget {
  final String image;
  DetailScreen(this.image);
  @override
  DetailScreenState createState() => DetailScreenState();
}

class DetailScreenState extends State<DetailScreen> {
  ScrollController _scrollController = ScrollController();
  bool hide = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.forward) {
        if (hide != false) {
          setState(() {
            hide = false;
          });
        }
      } else {
        if (hide != true) {
          setState(() {
            hide = true;
          });
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double Height = MediaQuery.of(context).size.height;
    double Width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SlidingUpPanel(
        body: Expanded(
          child: CustomScrollView(
            controller: _scrollController,
            slivers: <Widget>[
              SliverList(
                delegate: SliverChildListDelegate(
                  <Widget>[
                    Container(
                      height: 450,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.lightGreen,
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(30.0),
                              bottomRight: Radius.circular(30.0)),
                          image: DecorationImage(
                              image: NetworkImage(widget.image),
                              fit: BoxFit.fill),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black26,
                              offset: const Offset(8.0, 8.0),
                              blurRadius: 5.0,
                              spreadRadius: 1.2,
                            ),
                            BoxShadow(
                                color: Colors.white,
                                offset: const Offset(0.0, 0.0),
                                blurRadius: 0.0,
                                spreadRadius: 0.0)
                          ]),
                      child: Stack(
                        children: [
                          Positioned(
                              top: 10.0,
                              left: 10.0,
                              child: IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: const Icon(
                                    Icons.arrow_back_ios_new_rounded,
                                    color: Colors.white,
                                  )))
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget("Dun valley", 25, Colors.black87,
                              FontWeight.w700),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: Colors.grey[700],
                              ),
                              const SizedBox(width: 5.0),
                              TextWidget("Himachal Pradesh", 16, Colors.black87,
                                  FontWeight.w600),
                              Rating(),
                            ],
                          ),
                          // ... Your content
                          const SizedBox(height: 15),
                          TextWidget(
                              Infor, 18, Colors.black54, FontWeight.w500),
                          SizedBox(height: Height * .02),
                          // Divider(
                          //   color: Colors.black45,
                          //   height: 0.5,
                          //   thickness: 1,
                          //   indent: Width * 0.05,
                          //   endIndent: Width * 0.05,
                          // ),
                          TextWidget("Map", 25, Colors.black, FontWeight.w700),
                          Container(
                            height: MediaQuery.of(context).size.height * .2,
                            width: MediaQuery.of(context).size.width,
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            decoration: BoxDecoration(
                                color: Colors.black54,
                                borderRadius: BorderRadius.circular(16),
                                image: const DecorationImage(
                                    image: AssetImage('./map.png'),
                                    fit: BoxFit.fill)),
                          ),
                          SizedBox(
                            height: Height * 0.06,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        panel: Stack(
          children: [
            const Visibility(
              visible: true,
              child: Panel(),
            ),
            if (hide)
              Container(
                width: Width,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24))),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: Height * 0.06,
                        width: Width * 0.5,
                        margin: EdgeInsets.all(Height * 0.01),
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 11, 151, 238),
                            borderRadius: BorderRadius.circular(16.0)),
                        child: Center(
                            child: TextWidget(
                                "Book Now", 22, Colors.white, FontWeight.w600)),
                      ),
                    )
                  ],
                ),
              ),
          ],
        ),
        // Panel Design and Style
        maxHeight: Height * 0.7,
        minHeight: hide ? Height * 0.08 : Height * 0.04,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
