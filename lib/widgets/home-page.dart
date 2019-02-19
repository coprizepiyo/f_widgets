import 'package:flutter/material.dart';
import './round-checkbox.dart';

class HomePage extends StatelessWidget {
  var itemList = [
    {
      "title": "round checkbox",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("导航"),
      ),
      body:ListView.builder(
        itemCount: itemList.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Text("${index+1}", style:TextStyle(fontSize: 24.0)),
            title: Text(itemList[index]["title"], style:TextStyle(fontSize: 24.0)),
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => RoundCheckbox()));
            },
          );
        },
      )
    );
  }
}