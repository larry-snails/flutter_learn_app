import 'package:flutter/material.dart';
import 'BaseWidgets/base_widgets_list.dart';
import 'model/public_list_model.dart';

class RootHomePage extends StatefulWidget {
  
  @override
  State<StatefulWidget> createState() => _RootHomePageState();
}

class _RootHomePageState extends State<RootHomePage> {
  
  int _currentIndex = 0;
  List<BottomNavigationBarItem> items;
  List<Widget> views;
  @override
  void initState() {
    super.initState();
    items = [
      BottomNavigationBarItem(
        title: Text("容器",
        style: TextStyle(color: Colors.black),),
        icon: Icon(Icons.home, color: Colors.black,),
      ),
      BottomNavigationBarItem(
        title: Text("布局",
        style: TextStyle(color: Colors.black),),
        icon: Icon(Icons.home, color: Colors.black,),
      ),
      BottomNavigationBarItem(
        title: Text("基础",
        style: TextStyle(color: Colors.black),),
        icon: Icon(Icons.home, color: Colors.black,),
      ),
      BottomNavigationBarItem(
        title: Text("功能",
        style: TextStyle(color: Colors.black),),
        icon: Icon(Icons.home, color: Colors.black,),
      ),
      BottomNavigationBarItem(
        title: Text("其他", 
        style: TextStyle(color: Colors.black),),
        icon: Icon(Icons.home, color: Colors.black,),
      ),
    ];

    List<ListViewModel> base_widget_models = [
      ListViewModel("Text", ""),
      ListViewModel("Icon", ""),
      ListViewModel("Image", ""),
    ];

    List<ListViewModel> container_widget_models = [
      ListViewModel("Container", "container/container"),
      ListViewModel("ConstrainedBox", "container/ConstrainedBox"),
      ListViewModel("DecoratedBox", "container/DecoratedBox"),
    ];
    views = [
      BaseWidgets("容器", container_widget_models),
      BaseWidgets("布局", base_widget_models),
      BaseWidgets("基础", base_widget_models),
      BaseWidgets("功能", base_widget_models),
      BaseWidgets("其他", base_widget_models),
    ];
  }

  void onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: items,
        type: BottomNavigationBarType.fixed,
        onTap: onTap,
      ),
      body: views[_currentIndex],
    );
  }
}