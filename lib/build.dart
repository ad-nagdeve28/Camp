import 'package:flutter/material.dart';

class TagFilterDemo extends StatefulWidget {
  @override
  _TagFilterDemoState createState() => _TagFilterDemoState();
}

class _TagFilterDemoState extends State<TagFilterDemo> {
  List<String> allTags = [
    'Tag1',
    'Tag2',
    'Tag3',
    'Tag4',
    'Tag5',
    'Tag6',
    'Tag7',
    'Tag8',
    'Tag9',
    'Tag10'
  ];
  List<String> displayedTags = [];
  List<String> selectedTags = [];
  bool showAllTags = false;

  @override
  void initState() {
    super.initState();
    // Initially, display only the first 6 tags
    displayedTags = allTags.sublist(0, 6);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tag Filter Demo'),
      ),
      body: Column(
        children: [
          Container(
            height: 50,
            child: Row(
              children: [
                Expanded(
                  child: AnimatedOpacity(
                    duration: Duration(milliseconds: 500),
                    opacity: showAllTags ? 0.0 : 1.0,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: displayedTags.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: FilterChip(
                            label: Text(displayedTags[index]),
                            selected:
                                selectedTags.contains(displayedTags[index]),
                            onSelected: (bool selected) {
                              setState(() {
                                if (selected) {
                                  selectedTags.add(displayedTags[index]);
                                } else {
                                  selectedTags.remove(displayedTags[index]);
                                }
                              });
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      _toggleTagsView();
                    },
                    child: Text(showAllTags ? 'Show Less' : 'Show More'),
                  ),
                ),
              ],
            ),
          ),
          if (showAllTags)
            Container(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: allTags.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FilterChip(
                      label: Text(allTags[index]),
                      selected: selectedTags.contains(allTags[index]),
                      onSelected: (bool selected) {
                        setState(() {
                          if (selected) {
                            selectedTags.add(allTags[index]);
                          } else {
                            selectedTags.remove(allTags[index]);
                          }
                        });
                      },
                    ),
                  );
                },
              ),
            ),
          Expanded(
            child: ListView.builder(
              itemCount: selectedTags.length,
              itemBuilder: (context, index) {
                // Your item widget here
                return Card(
                  child: ListTile(
                    title: Text('Item $index'),
                    // Other item properties
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _toggleTagsView() {
    setState(() {
      showAllTags = !showAllTags;
      if (showAllTags) {
        displayedTags = allTags;
      } else {
        displayedTags = allTags.sublist(0, 6);
      }
    });
  }
}
