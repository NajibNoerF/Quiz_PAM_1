import 'package:flutter/material.dart';

class SegitigaScreen extends StatefulWidget {
  @override
  _SegitigaScreenState createState() => _SegitigaScreenState();
}

class _SegitigaScreenState extends State<SegitigaScreen> {
  double alas = 0.0;
  double tinggi = 0.0;
  double sisi1 = 0.0;
  double sisi2 = 0.0;
  double sisi3 = 0.0;
  double luas = 0.0;
  double keliling = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Segitiga Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  alas = double.parse(value);
                });
              },
              decoration: InputDecoration(labelText: 'Alas'),
            ),
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  tinggi = double.parse(value);
                });
              },
              decoration: InputDecoration(labelText: 'Tinggi'),
            ),
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  sisi1 = double.parse(value);
                });
              },
              decoration: InputDecoration(labelText: 'Sisi 1'),
            ),
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  sisi2 = double.parse(value);
                });
              },
              decoration: InputDecoration(labelText: 'Sisi 2'),
            ),
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  sisi3 = double.parse(value);
                });
              },
              decoration: InputDecoration(labelText: 'Sisi 3'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  luas = 0.5 * alas * tinggi;
                  keliling = sisi1 + sisi2 + sisi3;
                });
              },
              child: Text('Hitung'),
            ),
            SizedBox(height: 16),
            Text('Luas: $luas'),
            Text('Keliling: $keliling'),
          ],
        ),
      ),
    );
  }
}
