import 'package:flutter/material.dart';
import 'root_home_page.dart';
import 'container/container_view.dart';
import 'container/constrained_box.dart';
import 'container/decorated_box_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        
      ),
      home: RootHomePage(),
      routes: <String, WidgetBuilder> {
        "container/container": (_) => ContainerPage(),
        "container/ConstrainedBox": (_) => ConstrainedBoxPage(),
        "container/DecoratedBox": (_) => DecoratedBoxPage(),
        },
    );
  }
}
