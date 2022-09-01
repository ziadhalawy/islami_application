import 'package:flutter/material.dart';

class sibhaTap extends StatefulWidget {
  @override
  State<sibhaTap> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<sibhaTap> {
  List<String> tasbiha = [
    'الحمدلله',
    'الله اكبر',
    'سبحان الله',
    'لا إله إلا الله',
    'لا حول ولا قوة إلا بالله',
    'حسبنا الله ونعم الوكيل',
    'اللهم صلي وسلم وبارك على سيدنا محمد وعلى أهل بيته وصحبه وسلم'
  ];
  String value = "بسم الله الرحمن الرحيم";

  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
      if (_counter <= 34) {
        value = tasbiha[0];
      } else if (_counter > 34 && _counter <= 67) {
        value = tasbiha[1];
      } else if (_counter > 67 && _counter <= 100) {
        value = tasbiha[2];
      } else if (_counter > 100 && _counter <= 134) {
        value = tasbiha[3];
      } else if (_counter > 134 && _counter <= 167) {
        value = tasbiha[4];
      }else if (_counter > 167 && _counter <= 200) {
        value = tasbiha[5];
      }else if (_counter > 200 && _counter <= 250) {
        value = tasbiha[6];
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "$value",
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline5,
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.fromLTRB(100, 0, 0, 40),
        child: Container(
          child: FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Sibha',
            child: const Icon(Icons.add),
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
