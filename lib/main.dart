import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  double _sliderValue = 15.0;
  double _billAmount = 179.42;
  double _amount = 32.29;
  String _percent = (_amount / _billAmount * 100).toStringAsPrecision(2);
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
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            child: Image.asset('images/logo.png'),
                            width: 216.0,
                            height: 79.0,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            '\$$_billAmount',
                            style: TextStyle(
                              fontSize: 60.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Source Sans Pro',
                              color: Color(0xFF01B189),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 150.0,
                        height: 150.0,
                        child: FloatingActionButton(
                          child: SizedBox(
                            width: 75.0,
                            child: Icon(
                              FontAwesomeIcons.applePay,
                              color: Colors.black,
                              size: 50.0,
                            ),
                          ),
                          backgroundColor: Colors.white,
                          onPressed: () {},
                        ),
                      ),
                      Expanded(
                        child: Align(
                          //alignment: Alignment.bottomCenter,
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.all(40.0),
                                child: Text(
                                  'Tip',
                                  style: TextStyle(
                                    fontSize: 22.0,
                                    fontFamily: 'Source Sans Pro',
                                    color: Color(0xFF737375),
                                  ),
                                ),
                              ),
                              Container(
                                width: 247.0,
                                height: 15.0,
                                margin: EdgeInsets.all(20.0),
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
                              Container(
                                height: 20,
                                child: Text(
                                  '\$$_amount | $_percent%',
                                  style: TextStyle(
                                      color: Color(0xFF737375),
                                      fontFamily: 'Source Sans Pro',
                                      fontSize: 18.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      /*Expanded(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: ListTile(
                            title: Text('18%'),
                          ),
                        ),
                      ),*/
                      Expanded(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: ListTile(
                            title: Text(
                              'View Bill',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color.fromRGBO(153, 153, 162, 0.64),
                              ),
                            ),
                            subtitle: Icon(
                              Icons.keyboard_arrow_up,
                              color: Color.fromRGBO(153, 153, 162, 0.64),
                            ),
                          ),
                        ),
                      ),
                      /*Expanded(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            child: Icon(
                              Icons.keyboard_arrow_up,
                              color: Color(0xFF707070),
                              size: 30.0,
                            ),
                          ),
                        ),
                      ),*/
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Text("Page 2"),
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
