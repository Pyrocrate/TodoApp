import 'package:flutter/material.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:http/http.dart';

class expandedTileBuilder extends StatelessWidget {
  Map task = {};
  Function() delete;

  expandedTileBuilder({required this.task, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: ExpansionTileCard(
          leading: Icon(task['icon'], color: task['color']),
          title: Text(task['title']),
          subtitle: Text(
            task['subtitle'],
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
                child: Text(task['description'],
                    style: TextStyle(
                      fontSize: 15,
                    )),
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: delete,
                  icon: Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    print("hello there");
                  },
                  icon: Icon(Icons.done, color: Colors.green),
                )
              ],
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
