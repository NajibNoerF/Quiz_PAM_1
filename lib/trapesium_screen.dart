import 'package:flutter/material.dart';

class TrapesiumScreen extends StatefulWidget {
  @override
  _TrapesiumScreenState createState() => _TrapesiumScreenState();
}

class _TrapesiumScreenState extends State<TrapesiumScreen> {
  double panjangAtas = 0.0;
  double panjangBawah = 0.0;
  double tinggi = 0.0;
  double luas = 0.0;
  double keliling = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trapesium Calculator'),
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
                  panjangAtas = double.parse(value);
                });
              },
              decoration: InputDecoration(labelText: 'Panjang Atas'),
            ),
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  panjangBawah = double.parse(value);
                });
              },
              decoration: InputDecoration(labelText: 'Panjang Bawah'),
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
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  luas = 0.5 * (panjangAtas + panjangBawah) * tinggi;
                  keliling = panjangAtas + panjangBawah + (2 * tinggi);
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
