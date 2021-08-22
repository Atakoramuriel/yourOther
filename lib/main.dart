import 'package:flutter/material.dart';
import 'package:yourother/quiz.dart';
import './constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Find your other'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  MyHomePage({
    required this.title
  });

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
        Size size = MediaQuery.of(context).size;
    return Scaffold(
     
      body: Container(
        color: kBackgroundColor,
        child: Column(
          children: <Widget>[
            SizedBox(height: size.height * 0.2,),
              Row(
                children: [
                  Spacer(),
                  Text("Find your other",
                  style: TextStyle(color: Colors.white, fontSize: 35),),
                  Spacer()
                ],
              ),
              //SizedBox(height: size.height * 0.25,),
              SizedBox(height: size.height*0.1,),
              Row(children: 
              [
                SizedBox(width: 20,),
                Expanded(child: Text("Another is a person who reflects you. Our worlds are connected, it's time to meet your other.",
              style: TextStyle(color: Colors.white),),),
                SizedBox(width: 5,)
              
              ],),
              SizedBox(height: size.height*0.25,),
              Row(
                children: [
                  Spacer(),
                  MaterialButton(onPressed: (){
                             Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return StartQuiz();
                                },
                              ),
                            );
                  },
                  textColor: Colors.black,
                  color: Colors.white,
                  child: Text("Start", style: TextStyle(color: Colors.black),),),
                  Spacer()
                ],
              )
          ],)
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
