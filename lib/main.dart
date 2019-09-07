import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:math';


void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.deepOrange,
      appBar: AppBar(
        title: Text('HomePage'),
        backgroundColor: Colors.red,
      ), //AppBar
      body: dicepage(),
    ), //Scaffold
  )); //MaterialApp
}

//TODO : create new StateFullWigth short cut :
class dicepage extends StatefulWidget {
  @override
  _diceState createState() => _diceState();
}

class _diceState extends State<dicepage> {
  var leftdicenumber = 4;
  var rightdicenumber = 4;

  //apply any changing with in HotReload:
  @override
  Widget build(BuildContext context) {
    //create new varaible :
    // TODO: implement build
    //retucn row |
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(1.0),
              child: FlatButton(
                child: Image.asset('images/dice$leftdicenumber.png'),
                onPressed: () {
                  setState(() {
                    leftdicenumber = Random().nextInt(6) + 1;
                    rightdicenumber = Random().nextInt(6) + 1;
                    _toast(context);
                  });
                }),
            ), //images
          ), //Expanded end of the first element :
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(1.0),
              child: FlatButton(
                child: Image.asset('images/dice$rightdicenumber.png'),
                onPressed: () {
                  setState(() {
                    leftdicenumber = Random().nextInt(6)+1;
                    rightdicenumber = Random().nextInt(6)+1;
                    _toast(context);
                  });
                },
              ),
            ),
          ), //Expanded end of the seconde element :
        ], //<wigth>
        //2end childeren of the row :
      ),
    ); //row


}





//TODO: StatelessWidget  use it whene the state of the widget not changed :
//define new Class & override the build methode inside it :



  void _toast(BuildContext context) {
    print("Displaying Toast");
    Fluttertoast.showToast(
        msg: "Role the dice",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIos: 1
    );



  }
}
