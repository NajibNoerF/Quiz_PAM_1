import 'package:flutter/material.dart';

class PersegiPanjangScreen extends StatefulWidget {
  @override
  _PersegiPanjangScreenState createState() => _PersegiPanjangScreenState();
}

class _PersegiPanjangScreenState extends State<PersegiPanjangScreen> {
  double panjang = 0.0;
  double lebar = 0.0;
  double luas = 0.0;
  double keliling = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Persegi Panjang Calculator'),
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
                  panjang = double.parse(value);
                });
              },
              decoration: InputDecoration(labelText: 'Panjang'),
            ),
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  lebar = double.parse(value);
                });
              },
              decoration: InputDecoration(labelText: 'Lebar'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  luas = panjang * lebar;
                  keliling = 2 * (panjang + lebar);
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

