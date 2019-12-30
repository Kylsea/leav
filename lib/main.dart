import 'package:flutter/material.dart';

void main() {
  double _sliderValue = 15.0;
  runApp(
    MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF44BBAB),
                  Color(0xFF62CA9B),
                ],
              ),
            ),
            child: PageView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                   /* boxShadow: [
                      BoxShadow(
                        blurRadius: 3.0,
                        offset: Offset(1.0, 1.0),
                      ),
                    ], */
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Image.asset('images/logo.png'),
                        width: 216.0,
                        height: 79.0,
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            child: Image.asset('images/pay'),
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
                          ),
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text('Tip'),
                        ),
                      ),
                      Expanded(
                        child: Align(
                          child: Container(
                            width: 247.0,
                            height: 25.0,
                            child: SliderTheme(
                              data: SliderThemeData(
                                trackHeight: 10.0,
                                activeTrackColor: Color(0xFF00C598),
                                inactiveTrackColor: Color(0xFFB2EDDF),
                              ),
                              child: Slider(
                                value: _sliderValue,
                                onChanged: (newValue) {
                                  setState(() {});
                                },
                                divisions: 10,
                                max: 100.00,
                                min: 0.00,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text('View Bill'),
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Icon(
                            Icons.keyboard_arrow_up,
                            color: Color(0xFF707070),
                            size: 30.0,
                          ),
                        ),
                      ),
                      /* Expanded(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          color: Color(0xFF01B189),
                          height: 31.0,
                        ),
                      ),
                    ), */
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    color: Colors.white,
                    /*boxShadow: [
                      BoxShadow(
                        blurRadius: 3.0,
                        offset: Offset(1.0, 1.0),
                      ),
                    ],*/
                  ),
                  child: Center(
                    child: Text("Bill"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

void setState(Null Function() param0) {}
