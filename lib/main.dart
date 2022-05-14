import 'dart:async';
import 'package:flutter/material.dart';
import 'SignIn.dart';

void main() {
  runApp((const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => SplashScreenState();
}

class SplashScreenState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const HomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade900,
      body: Container (
        margin: const EdgeInsets.all(20),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Image.asset('assets/all_In_On.png'),
            Image.asset('assets/fox.gif'),
          ],
        ),
      ),

    );
  }
}
class HomeScreen extends StatelessWidget{
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.indigo.shade900,

      body: Container(
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.only(bottom: 8),
      child:Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children:[
      Align(
      alignment: Alignment.topCenter,
        child: Image.asset('assets/MOZILLA-Campus-club-icon.png',

          height: 500,
          width: 150,
          fit: BoxFit.fitWidth,
        ),
      ),
              const SizedBox(height: 40,),
              SizedBox(
                height: 40.0,
                child: Material(
                  borderRadius: BorderRadius.circular(20.0),
                  shadowColor: const Color(0xFFff9835),
                  elevation: 7.0,
                  child: GestureDetector(
                    onTap: (){},
                    child:Center(
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Monstserrat'
                        ),

                      ),

                    ),
                  ),
                ),

              ),
            const SizedBox(height: 40,),
            SizedBox(
              height: 40.0,
              child: Material(
                borderRadius: BorderRadius.circular(20.0),
                shadowColor: const Color(0xFFff9835),
                elevation: 7.0,
                child: GestureDetector(
                  onTap: (){var  push = Navigator.push(context,MaterialPageRoute(builder: (context){return SignIn();},),);} ,
                  child:Center(
                    child: Text(
                      'SIGN IN',
                      style: TextStyle(
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Monstserrat'
                      ),

                    ),

                  ),
                ),
              ),

            ),
            ],


      ),
      ),
    );
  }
}