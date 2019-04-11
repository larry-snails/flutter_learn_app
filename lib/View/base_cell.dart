import 'package:flutter/material.dart';
import '../model/public_list_model.dart';

class RootListViewCell extends StatelessWidget {
  
  RootListViewCell(this.padding, this.model);

  final EdgeInsets padding;

  final ListViewModel model;

  @override
  Widget build(BuildContext context) {
    Widget widget = Container(
      padding: padding,
      child: Container(
        child: Text(model.title),
        height: 50.0,
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.black12, width: 0.5))
        ),
      ),
    );
    return GestureDetector(
      child: widget,
      onTap: () {
        Navigator.pushNamed(context, model.url);
      },
    );
  }
}