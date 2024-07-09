
import 'dart:math';

import 'package:bmicalculatorapp/CalculateBmi.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class BMI extends StatefulWidget{
  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  @override
  bool isMale=true;
  double height=180;
  int age=28;
  double weight=60;


  Widget build(BuildContext context) {



    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR'
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(

                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale=true;

                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color:isMale?Colors.red : Colors.grey[900],
                          borderRadius: BorderRadiusDirectional.all(
                            Radius.circular(20)
                          )

                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage(
                                "assets/images/male.png"
                              ),
                              height: 90,
                              width: 90,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(

                              'MALE',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width:20,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale=false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color:isMale?Colors.grey[900]:Colors.red,
                          borderRadius: BorderRadiusDirectional.all(
                            Radius.circular(20)
                          )
                        ),

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage(
                                "assets/images/female.png"
                              ),
                              color: Colors.white,


                              height: 90,
                              width: 90,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(

                              'FEMALE',
                              style: TextStyle(
                                  color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold
                              ),
                            )
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
              padding: const EdgeInsets.symmetric(
                horizontal: 20
              ),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadiusDirectional.all(
                    Radius.circular(20)
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30

                      ),

                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${height.round()}',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 40,
                            color: Colors.white
                          ),
                        ),
                        Text(
                          'CM',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                    Slider(

                      activeColor: Colors.red,
                        inactiveColor: Colors.white,

                        value:height,
                        max: 220,
                        min: 80.0,
                        onChanged:(double value){
                        setState(() {
                          height=value;
                        });
                          print(value.round());


                        }
                        ),


                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[900],
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                            Text(
                              'WEIGHT',
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                              ),

                            ),
                          Text(
                            '${weight.round()}',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w900,
                              color: Colors.white
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(

                                  onPressed:(){
                                    setState(() {
                                      weight=weight-1;
                                    });

                                  },
                                child: Icon(
                                  Icons.remove
                                ),
                                mini: true,
                                backgroundColor: Colors.grey,
                              ),
                              FloatingActionButton(
                                onPressed:(){
                                  setState(() {
                                    weight=weight+1;
                                  });

                                },
                                child: Icon(
                                    Icons.add
                                ),
                                mini: true,
                                backgroundColor: Colors.grey,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[900],
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [
                          Text(
                            'AGE',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                            ),

                          ),
                          Text(
                            '${age}',
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w900,
                                color: Colors.white
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(

                                onPressed:(){
                                  setState(() {
                                    age=age-1;
                                  });

                                },
                                child: Icon(
                                    Icons.remove
                                ),
                                mini: true,
                                backgroundColor: Colors.grey,
                              ),
                              FloatingActionButton(
                                onPressed:(){
                                  setState(() {
                                    age=age+1;
                                  });

                                },
                                child: Icon(
                                    Icons.add
                                ),
                                mini: true,
                                backgroundColor: Colors.grey,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 50,
            width: double.infinity,
            child: MaterialButton(
              onPressed: (){

                var resultt=weight/pow(height/100,2);
                print(resultt.round());
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => result(
                          age,
                          isMale,
                          resultt
                        ),
                    ));


              },
              color: Colors.red,
              child: Text(
                'CALCULATE'
                    ,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 25
                ),
              ),

            ),
          )

        ],
      ),

    );
  }
}