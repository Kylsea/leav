import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // Root
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Leav',
      theme: ThemeData(
          //Anything related to App Theme
          ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  //Home Page

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  double _sliderValue = 15;
  double _billAmount = 179.40;
  String _billAmountDecimal = (179.40).toStringAsFixed(2);

  BoxDecoration billDecoration() {
    return BoxDecoration(
      border: Border.all(
        color: Color(0xFFDADADB),
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(10.0), //Try 5?
      ),
    );
  }

  void _incrementCounter() {
    setState(() {
      // This tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    String _tipDecimal =
        (_billAmount * (_sliderValue / 100)).toStringAsFixed(2);
    String _total =
        (_billAmount + (_billAmount * (_sliderValue / 100))).toStringAsFixed(2);
    // This method is rerun every time setState is called.

    return Scaffold(
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              //alignment: Alignment.topCenter,
              image: AssetImage('images/logo2x.png'),
              width: 182.0,
              height: 122.0,
            ),
            Text(
              'Hôtel Renaissance Centre-Ville Montréal',
            ),
            Text(
              '1250 Boulevard Robert-Bourassa',
            ),
            Text(
              'Montréal, QC H3B 3B8',
            ),
            Text(
              '(514) 657-5000',
            ),
            Container(
              decoration: billDecoration(),
              width: 311.0,
              height: 224.0,
            ),
            Divider(
              indent: 125.0,
              endIndent: 125.0,
              thickness: 1.0,
              color: Color(0xFF707070),
            ),
            Text(
              'Subtotal                                       \$ 132.20',
            ),
            Text(
              'TPS                                                \$ 19.83',
            ),
            Text(
              'TVQ                                                \$ 27.37',
            ),
            Text(
              '$_billAmountDecimal',
              style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
            ),
            Text(
              'Tip',
              style: TextStyle(
                  color: Color(0xFF737375), fontWeight: FontWeight.w600),
            ),
            Container(
              width: 375.0,
              child: SliderTheme(
                data: SliderThemeData(
                  trackHeight: 14.0,
                  activeTrackColor: Color.fromRGBO(0, 197, 152, 0.39),
                  inactiveTrackColor: Color(0xFFEEEEEE),
                  overlayColor: Color.fromRGBO(0, 197, 152, 0.10),
                  thumbColor: Color(0xFF00C598),
                  thumbShape: RoundSliderThumbShape(
                      enabledThumbRadius: 15, disabledThumbRadius: 15),
                ),
                child: Slider(
                  value: _sliderValue.roundToDouble(),
                  onChanged: (tipAmount) {
                    setState(
                      () {
                        _sliderValue = tipAmount.roundToDouble();
                      },
                    );
                  },
                  min: 0,
                  max: 100,
                ),
              ),
            ),
            Text(
              '$_sliderValue% | \$$_tipDecimal',
            ),
            Text(
              'Total                                        \$$_total',
            ),
            Container(
              height: 52,
              width: 330,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                color: Color(0xFF00C598),
                onPressed: _incrementCounter,
                child: Image.asset('images/pay.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
