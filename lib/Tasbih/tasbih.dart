import 'package:flutter/material.dart';


class sibhaTap extends StatefulWidget {
  @override
  State<sibhaTap> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<sibhaTap> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> tasbiha = [
      "بسم الله الرحمن الرحيم",
      'الحمدلله',
      'الله اكبر',
      'سبحان الله',
      'لا إله إلا الله',
      'لا حول ولا قوة إلا بالله',
      'حسبنا الله ونعم الوكيل',
      'اللهم صلي وسلم وبارك على سيدنا محمد وعلى أهل بيته وصحبه وسلم'
    ];
    String value = " " ;
    /*for(int i =0 ;i < tasbiha.length ;i++){
      if(_counter<=34)
        {
          value =tasbiha[i];
        }
      print(value);
    }
*/

    return Scaffold(
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             Text(
               "$value",
            ),
            Text(
              '$_counter',
              style: Theme
                  .of(context)
                  .textTheme
                  .headline5,
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
