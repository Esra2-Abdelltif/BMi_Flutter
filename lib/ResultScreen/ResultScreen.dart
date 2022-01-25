import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final int result;
  final int age;
  final bool ismale;

ResultScreen({
  required this.result,
  required this.age,
  required this.ismale,
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Color(0xFF111328),
        appBar: AppBar(
          title: Text('BMI RESULT',
            style: TextStyle(
                fontSize: 20
            ),),
          backgroundColor:Color(0xFF111328),
          centerTitle: true,
        ),
        body:Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child:
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color:Color(0xFF1D1E33)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Gender:',style: TextStyle(color: Color(0xFFEB1555),fontSize: 30)),
                          SizedBox(width: 8,),
                          Text('${ismale ? 'Male':'Female'}',style: TextStyle(color:Colors.white,fontSize: 30,fontStyle: FontStyle.italic),),
                        ],),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Age:',style: TextStyle(color: Color(0xFFEB1555),fontSize: 30)),
                          SizedBox(width: 8,),
                          Text('$age',style: TextStyle(color:Colors.white,fontSize: 30,fontStyle: FontStyle.italic),),
                        ],),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('IBM:',style: TextStyle(color: Color(0xFFEB1555),fontSize: 30)),
                          SizedBox(width: 8,),
                          Text('$result',style: TextStyle(color:Colors.white,fontSize: 30,fontStyle: FontStyle.italic),),
                        ],),

                    ],
                  ),


                ),
              ),
            ),
          ],
        )
    );
  }
}
