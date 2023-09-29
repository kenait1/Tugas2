import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Luas Segitiga',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LuasSegitigaCalculator(),
    );
  }
}

class LuasSegitigaCalculator extends StatefulWidget {
  @override
  _LuasSegitigaCalculatorState createState() => _LuasSegitigaCalculatorState();
}

class _LuasSegitigaCalculatorState extends State<LuasSegitigaCalculator> {
  double _alas = 0.0;
  double _tinggi = 0.0;
  double _luas = 0.0;

  void _hitungLuasSegitiga() {
    setState(() {
      _luas = 0.5 * _alas * _tinggi;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Luas Segitiga Calculator'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Masukkan Alas dan Tinggi Segitiga',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Alas',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  _alas = double.tryParse(value) ?? 0.0;
                });
              },
            ),
            SizedBox(height: 20),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Tinggi',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  _tinggi = double.tryParse(value) ?? 0.0;
                });
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _hitungLuasSegitiga();
              },
              child: Text('Hitung Luas'),
            ),
            SizedBox(height: 20),
            Text(
              'Luas Segitiga: $_luas',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
