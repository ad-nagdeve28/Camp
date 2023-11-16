import 'package:flutter/material.dart';

class TagFilter extends StatefulWidget {
  @override
  TagFilterState createState() => new TagFilterState();
}

class TagFilterState extends State<TagFilter> {
  List<String> tags = ['Tag1', 'Tag2', 'Tag3', 'Tag4'];
  List<String> selectedTags = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: tags.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: FilterChip(
                label: Text(tags[index]),
                selected: selectedTags.contains(tags[index]),
                onSelected: (bool selected) {
                  setState(() {
                    if (selected) {
                      selectedTags.add(tags[index]);
                      print(tags[index]);
                    } else {
                      selectedTags.remove(tags[index]);
                    }
                  });
                },
              ),
            );
          }),
    );
  }
}
