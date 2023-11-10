import 'package:flutter/material.dart';

class LingkaranScreen extends StatefulWidget {
  @override
  _LingkaranScreenState createState() => _LingkaranScreenState();
}

class _LingkaranScreenState extends State<LingkaranScreen> {
  double jariJari = 0.0;
  double luas = 0.0;
  double keliling = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lingkaran Calculator'),
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
                  jariJari = double.parse(value);
                });
              },
              decoration: InputDecoration(labelText: 'Jari-Jari'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  luas = 3.14 * jariJari * jariJari;
                  keliling = 2 * 3.14 * jariJari;
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
