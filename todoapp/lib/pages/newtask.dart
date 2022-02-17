import 'package:flutter/material.dart';
import 'package:todoapp/main.dart';

class newTask extends StatelessWidget {
  const newTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool keyboardIsOpened = MediaQuery.of(context).viewInsets.bottom != 0.0;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  color: Colors.red,
                  height: 250,
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                    padding: EdgeInsets.all(30),
                    child: Wrap(
                      runSpacing: 20,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            // border: OutlineInputBorder(),
                            labelText: "Task Title",
                            suffixIcon: Icon(Icons.add),
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            // border: OutlineInputBorder(),
                            labelText: "Task Subtitle",
                            suffixIcon: Icon(Icons.add),
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            // border: OutlineInputBorder(),
                            labelText: "Task Description",
                            suffixIcon: Icon(Icons.add),
                          ),
                          maxLines: 3,
                        ),
                      ],
                    ))
              ]),
        ),
        floatingActionButton: Visibility(
          visible: !keyboardIsOpened ? true : false,
          child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'newTask');
              },
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(150, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(Icons.add), Text("Add Task")],
              )),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
