import 'package:flutter/material.dart';

class ConstrainedBoxPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ConstrainedBox"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 200.0,
              maxWidth: 300.0,
              minWidth: 100.0,
              minHeight: 50.0
            ),
            child: Container(
              color: Colors.red,
              width: 150.0,
              height: 500.0,
            ),
          ),
          Spacer(),
          ConstrainedBox(
              constraints: BoxConstraints(minWidth: 60.0, minHeight: 20.0), //父
              child: UnconstrainedBox(
                //“去除”父级限制 但是位置仍在
                child: ConstrainedBox(
                  constraints:
                      BoxConstraints(minWidth: 190.0, minHeight: 60.0), //子
                  child: Container(
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            Spacer(),
            SizedBox(width: 414.0, height: 100.0,
              child: Container(
                color: Colors.blue,
              ),
            ),
        ],
      ),
    );
  }
}