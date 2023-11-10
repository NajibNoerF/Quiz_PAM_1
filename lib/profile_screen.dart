import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                'https://i.pinimg.com/736x/80/8c/d2/808cd268498798c15b18a0bbfcbc4c57.jpg',
              ),
            ),
            SizedBox(height: 16),
            Text('Nama: Najib Noer F.S'),
            Text('NIM: 124210081'),
            Text('Tempat/Tanggal Lahir: Yogyakarta/28 Desember 2002'),
            Text('Hobi: Mancing'),
          ],
        ),
      ),
    );
  }
}
