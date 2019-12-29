import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              new Container(
                width: 216.0,
                height: 79.0,
                child: Image.asset('images/logo.png'),
              ),
              SizedBox(height: 47.0),
              Text(
                '179.40',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontSize: 60.0,
                  letterSpacing: 2.5,
                  color: Color(0xFF01B189),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 47.0),
              new Container(
                width: 216.0,
                height: 216.0,
                decoration: new BoxDecoration(
                    // Circle
                    shape: BoxShape.circle,
                    color: Colors.white,
                    // Border
                    border: new Border.all(
                      width: 2.0,
                      color: Colors.white,
                    ),
                    // Shadow
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 5.0,
                      ),
                    ]),
                child: Icon(Icons.credit_card, size: 100.0),
              ),
              SizedBox(height: 47.0),
              Center(
                child: Text(
                  'Tip',
                  style: TextStyle(
                    fontSize: 22.0,
                    letterSpacing: 2.5,
                    color: Color(0xFF737375),
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
