import 'package:flutter/material.dart';

class BaseWidgets extends StatelessWidget {
  


  Widget listCellBuild(BuildContext context, int index) {
    return Container(
      child: Text("$index"),
      height: 50.0,
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey, width: 0.5,))
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("基础Widget"),
        elevation: 0.0,
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: listCellBuild,
      ),
    );
  }
}