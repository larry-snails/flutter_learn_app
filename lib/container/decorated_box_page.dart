import 'package:flutter/material.dart';

class DecoratedBoxPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DecoratedBox"),
      ),
      body: Column(
        children: <Widget>[
          DecoratedBox(
            child: Padding(
              child: Text("DecoratedBox", style: TextStyle(color: Colors.white,fontSize: 20.0),),
              padding: EdgeInsets.all(30.0),
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.green, Colors.blue, Colors.yellow],
              ),
              border: Border.all(color: Colors.black, width: 1.0),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              boxShadow: <BoxShadow>[
                BoxShadow(color: Colors.grey, 
                  spreadRadius: 5.0, 
                  blurRadius: 5.0,
                  offset: Offset(10.0, 10.0)  
                )
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(50.0),
            width: 100.0,
            height: 100.0,
            child: Text("Container", style: TextStyle(color: Colors.white,fontSize: 20.0),),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.green, Colors.blue, Colors.yellow]
              ),
              border: Border.all(color: Colors.black, width: 1.0),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              boxShadow: <BoxShadow>[
                BoxShadow(color: Colors.grey, 
                  spreadRadius: 5.0, 
                  blurRadius: 5.0,
                  offset: Offset(10.0, 10.0)  
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}