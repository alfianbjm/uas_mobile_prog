import 'package:flutter/material.dart';
import 'dart:math' as math; // Import library math untuk menggunakan nilai pi

class Lingkaran extends StatefulWidget {
  const Lingkaran({super.key});

  @override
  LingkaranState createState() => LingkaranState();
}

class LingkaranState extends State<Lingkaran> {
  final _jariJariController = TextEditingController();
  double _luas = 0;

  void _hitungLuas() {
    double jariJari = double.parse(_jariJariController.text);
    setState(() {
      _luas = math.pi * jariJari * jariJari;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Kalkulator Luas Lingkaran',
            style: TextStyle(fontSize: 24),
          ),
          const SizedBox(
            height: 60,
          ),
          TextField(
            controller: _jariJariController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
                labelText: 'Masukkan jari-jari lingkaran'),
          ),
          const SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: _hitungLuas,
            style: TextButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
            ),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.calculate),
                SizedBox(
                  width: 8,
                ),
                Text('Hitung Luas')
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Luas Lingkaran: ${_luas.toStringAsFixed(2)}', // Di sini kita format luas
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
