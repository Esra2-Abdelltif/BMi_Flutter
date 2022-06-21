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
  String getResult() {
    if (result < 18.5) {
      return 'underweight';
    } else if (result < 25) {
      return ' Normal';
    } else if (result < 30) {
      return ' overweight';
    } else {
      return 'obese';
    }
  }

  Color getColorResult() {
    if (result < 18.5) {
      return Colors.lightBlue;
    } else if (result < 25) {
      return Colors.green;
    } else if (result < 30) {
      return Colors.orange;
    } else {
      return Colors.red;
    }
  }
  String getInterpretation() {
    if (result > 30)
      return "Your body weight is currently very higher than the recommended weight. Must visit a doctor.";
    else if (result >= 25)
      return "Your body weight is currently higher than the recommended weight. Consider some small changes such as taking the stairs over the elevator.";
    else if (result > 18.5)
      return "Your body weight is exactly where it should be, keep on keeping on!";
    else
      return "Your body weight is a bit lower than the recommended weight, treat yourself to your favorite food or try lifting weights to gain muscle mass.";

}

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
                      Expanded(
                        flex: 5,
                        child:  Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(getResult(),style: TextStyle(color:getColorResult(),fontSize: 40,fontWeight: FontWeight.bold)),
                            Text('$result',style: TextStyle(color:Colors.white,fontSize: 60,fontStyle: FontStyle.italic),),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text(getInterpretation(), textAlign: TextAlign.center,
                                style: TextStyle(fontStyle: FontStyle.italic,fontSize: 18.0,
                                  color: Color(0xFF8D8E98),)
                               ),
                            ),
                          ],
                        ),

                      ),

                      Container(
                        width: double.infinity,
                        height: 70,

                        child: MaterialButton(onPressed: (){
                          Navigator.pop(context);

                        },
                          color: Color(0xFFEB1555),
                          child: Text('RE-CALCULATE',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            ),),

                        ),
                      ),


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