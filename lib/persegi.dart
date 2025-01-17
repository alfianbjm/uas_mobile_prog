import 'package:flutter/material.dart';

class Persegi extends StatefulWidget {
  const Persegi({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PersegiState createState() => _PersegiState();
}

class _PersegiState extends State<Persegi> {
  TextEditingController panjangController = TextEditingController();
  TextEditingController lebarController = TextEditingController();
  String hasil = '';

  void hitungLuas() {
    double panjang = double.parse(panjangController.text);
    double lebar = double.parse(lebarController.text);
    double luas = panjang * lebar;
    setState(() {
      hasil = 'Luas Persegi: $luas';
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
            'Kalkulator Luas Persegi',
            style: TextStyle(fontSize: 24),
          ),
          TextField(
            controller: panjangController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(labelText: 'Panjang'),
          ),
          TextField(
            controller: lebarController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(labelText: 'Lebar'),
          ),
          const SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: hitungLuas,
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
            height: 10,
          ),
          Text(
            hasil,
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
