import 'package:flutter/material.dart';
class Whitetext extends StatelessWidget {
  String value;
  Whitetext(this.value);

  @override
  Widget build(BuildContext context) {
    return Text(value,style:const  TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),);
  }
}

class Whitetext54 extends StatelessWidget {
  String value;
  double size;
  Whitetext54(this.value,this.size);

  @override
  Widget build(BuildContext context) {
    return Text(value,style:  TextStyle(color: Colors.white54,fontSize:size),);
  }
}