


import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignIn extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return Scaffold(
      body: Body(),
    );
  }
}
class Body extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;{
      return Container(
        height: size.height,
        width: double.infinity,
        child:
        Image.asset('assets/Untitled.jpg'),

      );


    }
  }
}


