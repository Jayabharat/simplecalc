import 'package:flutter/material.dart';

typedef void CalculatorButtonTapCallback({String buttonText});

class CalculatorButton extends StatelessWidget {
  CalculatorButton({this.text, @required this.onTap});

  final String text;
  final CalculatorButtonTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Color.fromRGBO(0, 0, 0, 0.1),
                width: 0.5,
              ),
            ),
            child: FlatButton(
              color: Colors.black,
              onPressed: () => onTap(buttonText: text),
              child: Text(
                text,
                style: TextStyle(color:Colors.white,fontSize: 22, fontWeight: FontWeight.bold),
              ),
              padding: EdgeInsets.all(30),
              highlightColor: Colors.red[100],
              splashColor: Colors.blueAccent[100],
            )));
  }
}
