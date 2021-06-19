import 'dart:ffi';

import 'package:flutter/material.dart';

class BMISResult extends StatelessWidget {
  final double result;
  final bool ismale;
  final int age;
  final String state;

  BMISResult({
    @required this.result,
    @required this.ismale,
    @required this.age,
    @required this.state,
  });

  /*
*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: Text(
          " BMI Result",
        ),
      ),
      body: Container(
        color: Colors.black54,
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Gender : ${ismale ? "Male" : "Female"}",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Age : $age",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Your BMI : ${result.toStringAsFixed(2)}",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[400],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsetsDirectional.only(start: 20,end: 20,),
                child: Container(
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      state,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[400],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  child: Text(
                    "*This result is not negligible if you are pregnant, bodybuilder, or under 19 years old",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,color: Colors.redAccent
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[400],
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
