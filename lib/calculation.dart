import 'dart:async';
import 'package:flutter/material.dart';
import 'lastpage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  startTime()async{
    Timer(const Duration(seconds: 1),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> BMICalculator()));
    });
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  Widget build(BuildContext context) {
    return Scaffold(

        body:

        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/images/bmi.jpeg",
                  height: 250, width: 300),
              const SizedBox(height: 10,),

              const CircularProgressIndicator(
                color: Colors.green,
              )
            ],

          ),
        )



    );
  }
}