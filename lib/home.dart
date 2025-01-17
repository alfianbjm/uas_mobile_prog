import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    required this.profile,
    required this.lingkaran,
    required this.persegi,
    super.key,
  });

  final void Function() profile;
  final void Function() lingkaran;
  final void Function() persegi;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'UAS Pemrograman Mobile',
            style: TextStyle(
              fontSize: 24,
              color: Colors.blue,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: persegi,
            style: TextButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
            ),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.square_outlined),
                SizedBox(
                  width: 8,
                ),
                Text('Hitung Luas Persegi')
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: lingkaran,
            style: TextButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
            ),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.circle_outlined),
                SizedBox(
                  width: 8,
                ),
                Text('Hitung Luas Lingkaran')
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: profile,
            style: TextButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
            ),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.people_alt),
                SizedBox(
                  width: 8,
                ),
                Text('Profile Developer')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
