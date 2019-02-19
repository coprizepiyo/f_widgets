import 'package:flutter/material.dart';

class RoundCheckbox extends StatefulWidget {
  _RoundCheckboxState createState() => _RoundCheckboxState();
}

class _RoundCheckboxState extends State<RoundCheckbox> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("圆形多选框")),
      body: Center(
          child: InkWell(
        onTap: () {
          setState(() {
            _value = !_value;
          });
        },
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle, 
            color: Colors.white, 
            border:Border(
              top:BorderSide(color: Colors.blue, width: 5.0),
              bottom: BorderSide(color: Colors.blue, width: 5.0),
              left: BorderSide(color: Colors.blue, width: 5.0),
              right: BorderSide(color: Colors.blue, width: 5.0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: _value
                ? Icon(
                    Icons.check,
                    size: 30.0,
                    color: Colors.blue,
                  )
                : Icon(
                    Icons.check_box_outline_blank,
                    size: 30.0,
                    color: Colors.white,
                  ),
          ),
        ),
      )),
    );
  }
}