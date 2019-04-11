import 'package:flutter/material.dart';
import '../model/public_list_model.dart';

class BaseWidgets extends StatelessWidget {

  final List<ListViewModel> models = [
    ListViewModel("Text", ""),
    ListViewModel("Icon", ""),
    ListViewModel("Image", ""),
  ];
  
  Widget listCellBuild(BuildContext context, int index) {
    ListViewModel model = models[index];
    return Container(
      child: Text(model.title),
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
        itemCount: models.length,
        itemBuilder: listCellBuild,
      ),
    );
  }
}