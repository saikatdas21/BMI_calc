import 'package:flutter/material.dart';
import 'package:bmi_calc/calculation.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Center(
            child: Text('BMI CALCULATOR',style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
            ),
          ),
        ),
        body: Column(
          children: <Widget>[
            Container(
              child: Center(
                child: (
                    Image.asset("assets/images/bmi.jpeg",
                    )
                ),
              ),
            ),

            SizedBox(height: 20,),
            Text('BMI Calculator',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),),

            SizedBox(height: 20,),
            Text('Click the BMI Icon',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),),

            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: [

                    // Add GestureDetector to make the icon clickable
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SplashScreen()),
                        );
                      },
                      child: Icon(
                        Icons.health_and_safety,
                        color: Colors.blue,
                        size: 40,
                      ),
                    ),
                    Text(
                      'BMI',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                  ],
                ),

              ],
            ),




          ],
        )
    );
  }
}
