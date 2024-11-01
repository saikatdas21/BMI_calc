import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class BMICalculator extends StatefulWidget {
  BMICalculator({super.key});

  @override
  State<BMICalculator> createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  // Controllers for the TextFields
  final TextEditingController heightController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  var name =new TextEditingController();

  @override
  void dispose() {
    // Dispose controllers to free up resources
    heightController.dispose();
    weightController.dispose();
    super.dispose();
  }

  var bmi = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            const SizedBox(height: 20),


            const SizedBox(height: 40),
            TextField(
              controller: heightController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Height',
                hintText: 'Please enter your height in cm',
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            TextField(
              controller: weightController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Weight',
                hintText: 'Please enter your weight in kg',
              ),
              keyboardType: TextInputType.number,
            ),



            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: (){
                if(bmi>=18){
                  // print("overweight");
                  Fluttertoast.showToast(msg: "overweight");
                }
                Fluttertoast.showToast(msg: "ok");
                // Navigator.push(context, MaterialPageRoute(builder:(context)=>_ResultPageState()));
                setState(() {
                  double height = double.parse(heightController.text) ;
                  double weight = double.parse(weightController.text);
                  bmi = (weight / (height * height))*10000;  /// /10000 means cm to m
                  // Print the BMI result to the console
                });
                // print(bmi);
              },
              child: const Text(
                'Result',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            SizedBox(height: 20,),

            SizedBox(height: 20,),



            Container(
              height: 150,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: Colors.black,
                  width: 5,
                ),
              ),

              // height: 150, width: 350,
              // color: Color(0xF52F35E8),
              child:
              Center(
                child: Text( "Your BMI: ${bmi.toStringAsFixed(2)}",style:TextStyle(
                  color: Colors.white,
                  fontSize:30,
                  fontWeight: FontWeight.bold,
                ),),
              ),

            ),

            // Text('$name'),
          ],
        ),
      ),



    );
  }
}