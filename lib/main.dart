import 'package:flutter/material.dart';

import 'layout/home_layout.dart';
import 'modules/bmi_result/bmiresult.dart';
import 'modules/bmi/bmi.dart';
void main() {
  runApp(MyApp());
}
 class MyApp extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
      // theme: ThemeData.dark(),
       home:HomeLayout(),


     );
   }
 }
 