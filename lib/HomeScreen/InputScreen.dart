import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ibm_app/ResultScreen/ResultScreen.dart';



class InputScreen extends StatefulWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {

  bool ismale=true;
  double height = 120;
  int weight = 60;
  int age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF111328),
      appBar: AppBar(
        title: Text('BMI CALCULATOR',
          style: TextStyle(
            fontSize: 20
          ),),
        backgroundColor:Color(0xFF111328),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          ismale=true;
                        });

                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ismale?  Color(0xFFEB1555):Color(0xFF1D1E33)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                         Icon(Icons.male,
                             color: Colors.white,
                           size: 120,
                         ),
                            Text('MALE',
                              style: TextStyle(
                                color: Color(0xFF8D8E98),
                                fontSize: 20
                              )
                              ,)
                            // SvgPicture.asset('assets/icons/twitter.svg' ,height: 20,width: 20,),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          ismale=false;
                        });
                      },
                      child: Container(
                        //color: Colors.grey[200],
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: ismale? Color(0xFF1D1E33):Color(0xFFEB1555)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon( Icons.female, color:Colors.white,size: 120,),
                            Text('FEMALE',style: TextStyle(
                              color: Color(0xFF8D8E98),
                              fontSize: 20
                            ),)
                            // SvgPicture.asset('assets/icons/twitter.svg' ,height: 20,width: 20,),
                          ],
                        ),
                      ),
                    ),
                  ),


                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
              decoration:BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xFF1D1E33),
              ),
                 width: double.infinity,
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('HEIGHT',
                      style: TextStyle(
                        fontSize: 25,
                        color:  Color(0xFF8D8E98),
                      ),),
                    SizedBox(
                      height: 8,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.baseline,
                     textBaseline: TextBaseline.alphabetic,
                     children: [
                       Text('${height.round()}',
                         style: TextStyle(
                             fontSize: 40,
                             fontWeight: FontWeight.bold,
                             color: Colors.white
                         ),),
                       SizedBox(width: 3,),
                       Text('CM',
                         style: TextStyle(
                             fontSize: 18,
                             color:  Color(0xFF8D8E98),
                         ),),
                     ],
                   ),
                    Slider(value: height,
                      onChanged:(value)  {
                     setState(() {
                       height=value;

                     });
                      }
                      ,
                      min: 80,
                      max: 240,
                      activeColor: Color(0xFFEB1555),
                      inactiveColor: Color(0xFF8D8E98),
                    )
                  ],
                ),

              ),
            )
            ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFF1D1E33)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Text('WEIGHT',
                        style: TextStyle(
                          fontSize: 20,
                          color:  Color(0xFF8D8E98),
                        ),),
                        SizedBox(
                        height: 5,),
                        Text('${weight}',
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),),
                          SizedBox(
                            height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          FloatingActionButton(onPressed: (){
                            setState(() {
                              weight++;
                            });
                          },
                            child: Icon(Icons.add),
                            heroTag: 'weight++',
                            mini: true,backgroundColor:  Color(0xFF8D8E98),),
                          FloatingActionButton(onPressed: (){
                            setState(() {
                              weight--;
                            });
                          },
                            child:  Icon(Icons.remove),
                            heroTag: 'weight--',

                            mini: true,backgroundColor:  Color(0xFF8D8E98),),


                        ],
                      ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFF1D1E33)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('AGE',
                            style: TextStyle(
                              fontSize: 20,
                              color:  Color(0xFF8D8E98),
                            ),),
                          SizedBox(
                            height: 5,),
                          Text('${age}',
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),),
                          SizedBox(
                            height: 5,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              FloatingActionButton(onPressed: (){
                                setState(() {
                                 age++;
                                });
                              },
                                child: Icon(Icons.add),
                                heroTag: 'age++',
                                mini: true,backgroundColor:  Color(0xFF8D8E98),),
                              FloatingActionButton(onPressed: (){
                                setState(() {
                                  age--;
                                });
                              },
                                child:  Icon(Icons.remove),
                                heroTag: 'age--',
                                mini: true,backgroundColor:  Color(0xFF8D8E98),),

                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 70,

            child: MaterialButton(onPressed: (){
              double Result=weight/pow(height/100,2);
              print(Result.round());
              Navigator.push(context,MaterialPageRoute(builder: (context) =>
                  ResultScreen(ismale: ismale,

                    age: age,

                    result: Result.round(),
                  )));

            },
              color: Color(0xFFEB1555),
              child: Text('CALCULATE',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
              ),),

            ),
          ),
          ],
      ),
    );
  }
}
