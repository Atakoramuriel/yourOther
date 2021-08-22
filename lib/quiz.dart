import 'package:flutter/material.dart';
import 'package:yourother/results.dart';
import './constants.dart';


class StartQuiz extends StatefulWidget {

  @override
  _StartQuizState createState() => _StartQuizState();
}




class _StartQuizState extends State<StartQuiz> {



    //Data load here 
    List<String> questions = ["Are you a happy person?",
     "I like going out and meeting people", 
     "I enjoy sunny weather", 
     "How do you feel about animals?",
      "I have a great relationship with my family", 
      "How do you feel about mornings?", 
      "Are you easily stressed out?", 
      "Do you hear voices inside your head?"];


    List<List<String>> answers = [["Nope. I hate my life.", "I love it!", "It’s okay sometimes.", "It’s whatever."], 
               ["Nope. I hate people.", "Yep! I love interactions!", "It doesn’t matter.", " I like being to myself, but I also like going out on occasions."],
               ["I prefer the rain.", "I’d rather snow.", "I love the sun!", "I'm okay with anything."],
               ["I love them.", "They’re okay, but wouldn’t get one.", "I love them but I’m allergic.", "I don't like animals."],
               ["What Family?", "We all hate each other.", "We get along really well!", "They hate me because I’m crazy."],
               ["I am a morning person!", "I hate the mornings.", "I’d rather sleep in.", "don’t talk to me."],
               ["I am easily stressed out.",  "Nothing phases me.", "I’m a mess.", "It takes a lot for something to stress me out."],
               ["I hear voices in my head.", "I only hear my voice.", "I’ve never heard any such voice", "nope, never."]
              ];

  //Index 
    var index = 0; 


  @override
  Widget build(BuildContext context) {
    
    Size size = MediaQuery.of(context).size;

    return Container(
        color: kBackgroundColor,
        child: Column(
          children: <Widget>[
              SizedBox(height: size.height * 0.2,),
              index == questions.length ? Row(
                children: <Widget>[
                  Spacer(),
                  Text("Finally . . . ", style: TextStyle(color: Colors.white, decoration: TextDecoration.none, fontSize: 30),),
                  Spacer(),
                ],
              ) : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                      Text(questions[index], style: TextStyle(color: Colors.white, fontSize: 15, decoration: TextDecoration.none),),
                      SizedBox(height: 0.5,),
                ],
              ),
  

              index == questions.length ? Column(
                children: [
                  SizedBox(height: size.height*0.2,),
                  MaterialButton(onPressed: (){
                      Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return ViewResults();
                                },
                              ),
                            );
                  },
                  color: Colors.red,
                  child: Text("Meet your other", style: TextStyle(color: Colors.white),),),
                ],
              ) : Container(
                 child: Column(
                   children: [
                     SizedBox(height: size.height*0.2,),
               MaterialButton(onPressed: (){
                      print("increasing");
                      print("Questions length : " + questions.length.toString());
                         if(index < questions.length){
                             setState(() {
                            
                                    print(index);
                                    index = index + 1;
                                    print("End index : " + index.toString());
                             });
                          }
                    },
                    minWidth: size.width * 0.80,
                    color: Colors.amber[700],
                    child: Text(answers[index][0], style: TextStyle(color: Colors.black),),
              ),
              SizedBox(height: 10,),
                             MaterialButton(onPressed: (){
                      print("increasing");
                      print("Questions length : " + questions.length.toString());
                        if(index < questions.length){
                             setState(() {
                            
                                    print(index);
                                    index = index + 1;
                            
                             });
                          }
                    },
                    minWidth: size.width * 0.80,
                    color: Colors.amber[700],
                    child: Text(answers[index][1], style: TextStyle(color: Colors.black),),
              ),
              SizedBox(height: 10,),
                             MaterialButton(onPressed: (){
                      print("increasing");
                      print("Questions length : " + questions.length.toString());
                      if(index < questions.length){
                             setState(() {
                            
                                    print(index);
                                    index = index + 1;
                            
                             });
                          }
                    },
                    minWidth: size.width * 0.80,
                    color: Colors.amber[700],
                    child: Text(answers[index][2], style: TextStyle(color: Colors.black),),
              ),
              SizedBox(height: 10,),
                             MaterialButton(onPressed: (){
                      print("increasing");
                      print("Questions length : " + questions.length.toString());
                      if(index < questions.length){
                             setState(() {
                            
                                    print(index);
                                    index = index + 1;
                            
                             });
                          }
                    },
                    minWidth: size.width * 0.80,
                    color: Colors.amber[700],
                    child: Text(answers[index][3], style: TextStyle(color: Colors.black),),
              ),
              SizedBox(height: 10,),
                   ],),
               ),

              SizedBox(height: 15,),

              index < questions.length ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Question : " + (index+1).toString() + '\\' + (questions.length).toString(), style: TextStyle(color: Colors.white, 
                  fontSize: 20, decoration: TextDecoration.none),)
                ],
              ) : Row(),

              Spacer()

          ],
        ),
    );
  }
}











        // if(index < questions.length - 1){
        //          setState(() {
                 
        //                 print(index);
        //                 index = index + 1;
                 
        //          });
        //           }
        //       },