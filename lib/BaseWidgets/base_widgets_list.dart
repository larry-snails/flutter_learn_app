import 'package:flutter/material.dart';
import '../model/public_list_model.dart';
import '../View/base_cell.dart';

class BaseWidgets extends StatelessWidget {

  BaseWidgets(this.title, this.models);

  final String title;

  final List<ListViewModel> models;
  
  Widget listCellBuild(BuildContext context, int index) {
    ListViewModel model = models[index];
    return RootListViewCell(EdgeInsets.symmetric(horizontal: 15.0), model);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        elevation: 0.0,
      ),
      body: ListView.builder(
        itemCount: models.length,
        itemBuilder: listCellBuild,
      ),
    );
  }
}