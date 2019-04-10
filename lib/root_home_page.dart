import 'package:flutter/material.dart';
import 'BaseWidgets/base_widgets_list.dart';

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

    views = [
      BaseWidgets(),
      BaseWidgets(),
      BaseWidgets(),
      BaseWidgets(),
      BaseWidgets(),
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