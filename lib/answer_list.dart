import 'package:flutter/material.dart';
import 'package:flutter_question_list_jalal/appdata.dart';

class AnswerList extends StatefulWidget {
  const AnswerList({super.key});

  @override
  State<AnswerList> createState() => _AnswerListState();
}

class _AnswerListState extends State<AnswerList> {
  bool _firstTimeFlag = false;
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    if (_firstTimeFlag == false) {
      _firstTimeFlag = true;
      print('-----> Once Execute');

      _selectedIndex = ModalRoute.of(context)!.settings.arguments as int;

      print('------ Received Index: $_selectedIndex');
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          'Flutter Question & Answer',
          style: TextStyle(
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                appDataList[_selectedIndex].question,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
              SizedBox(
                height: 30,
                width: 250,
                child: Divider(
                  color: Colors.orange,
                ),
              ),
              Text(
                appDataList[_selectedIndex].answer,
                style: TextStyle(
                  fontSize: 20,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
