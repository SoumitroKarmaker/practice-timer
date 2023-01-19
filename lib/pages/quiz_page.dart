import 'package:flutter/material.dart';
class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {

  String genderGroupValue = 'male';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Quiz App'),),
      body: Column(
        children: [
          Radio(
            value: 'male',
            groupValue: genderGroupValue,
            onChanged: (value){
              setState(() {
                genderGroupValue = value!;
              }
              );
            },
          ),
          SizedBox(height: 20),
          Radio(
            value: 'female',
            groupValue: genderGroupValue,
            onChanged: (value){
              setState(() {
                genderGroupValue = value!;
              });
            },
          ),
        ],
      ),
    );
  }
}
