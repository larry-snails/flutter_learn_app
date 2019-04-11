import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {

  var title = "Container({\nthis.alignment,\nthis.padding, //容器内补白，属于decoration的装饰范围\nColor color, // 背景色\nDecoration decoration, // 背景装饰\nDecoration foregroundDecoration, //前景装饰\ndouble width,//容器的宽度\ndouble height, //容器的高度\nBoxConstraints constraints, //容器大小的限制条件\n this.transform, //变换\nthis.child,\n})";
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container", style: TextStyle(color: Colors.white, fontSize: 20.0),),
      ),
      body: new Center(
        child:Container(
          padding: EdgeInsets.all(10.0),
          child: Text(title, style: TextStyle(fontSize: 12.0),),
          width: 350.0,
          height: 400.0,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.yellowAccent, width: 5.0, style: BorderStyle.solid),
            gradient: const LinearGradient(
              colors: [Colors.lightBlue,Colors.greenAccent,Colors.purple]
            ),
          ),
        ),
      )
    );
  }
}