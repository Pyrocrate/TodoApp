import 'package:flutter/material.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';

class expandedListBuilder extends StatefulWidget {
  var tasks = [];
  var index;
  expandedListBuilder({required this.tasks, this.index});

  @override
  _expandedListBuilderState createState() =>
      _expandedListBuilderState(tasks: tasks, index: index);
}

class _expandedListBuilderState extends State<expandedListBuilder> {
  var tasks = [];
  var index;

  _expandedListBuilderState({required this.tasks, this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: ExpansionTileCard(
          leading: Icon(tasks[index]['icon'], color: tasks[index]['color']),
          title: Text(tasks[index]['title']),
          subtitle: Text(
            tasks[index]['subtitle'],
            style: TextStyle(
              color: Colors.grey[700],
            ),
          ),
          children: [
            Divider(
              thickness: 1.0,
              height: 1.0,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text(tasks[index]['description'],
                    style: TextStyle(
                      fontSize: 15,
                      letterSpacing: 2,
                    )),
              ),
            )
          ],
          // trailing: Row(mainAxisSize: MainAxisSize.min, children: [
          //   Icon(Icons.mode, color: Colors.black),
          //   Icon(Icons.hourglass_empty, color: Colors.black),
          //   Icon(Icons.arrow_forward, color: Colors.black),
          // ]),
        ),
      ),
    );
  }
}
