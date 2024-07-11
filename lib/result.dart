// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'calculation.dart';

class ResultPage extends StatefulWidget {
  int height;
  int weight;
  int age;
  // ignore: use_key_in_widget_constructors
  ResultPage({required this.height, required this.weight, required this.age});

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  double bmires = 0;
  //int bmiAge = Age;
  void initState() {
    Logic l = Logic();
    bmires = l.calculateBMI(widget.height, widget.weight);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "BMI Calculator",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 116, 101, 58)
       
      ),
      body: Center(
        child: Container(
          height: 250,
          width: 250,
          
          decoration: BoxDecoration(color:Color.fromARGB(255, 116, 101, 58) ,borderRadius: BorderRadius.circular(20)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "BMI RESULT IS :",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: Colors.white),
              ),
              SizedBox(height: 10),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '${bmires.toStringAsFixed(2)}',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ),
                SizedBox(height: 10),
              Text(
                "YOUR AGE IS :",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: Colors.white),
              ),
                SizedBox(height: 10),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '${widget.age}',
                    style: TextStyle(
                        fontSize:20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
