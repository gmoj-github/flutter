import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Flutter!"),
        centerTitle: true,
      ),
      body: _body(),
    );
  }

  // Body with the button in the center of screen
  _body() {
    return Container(
      color: Colors.white,
      child: Center(
        child: _buttonOk(),
      ),
    );
  }

  // Body with 3 buttons using Row and changing main axis alignment
  /*_body(context) {

    Size deviceSize = MediaQuery.of(context).size;

    return Container(
      height: deviceSize.height,
      color: Colors.yellow,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _buttonOk(),
          _buttonOk(),
          _buttonOk()
        ],
      ),
    );
  }*/

  _image() {
    return Image.asset(
      "assets/images/04.jpg",
      fit: BoxFit.cover,
    );
  }

  _buttonOk() {
    return RaisedButton(
      child: Text(
        "OK!",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      onPressed: () => _onClickOk(),
      color: Colors.blue,
    );
  }

  void _onClickOk() {
    print("OK clicked!");
  }

  _text() {
    return Text(
      "Hello world!",
      style: TextStyle(
        color: Colors.blue,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
