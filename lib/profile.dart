import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    required this.home,
    super.key,
  });

  final void Function() home;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(
                'https://www.iconpacks.net/icons/2/free-user-icon-3296-thumb.png'),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Nama : Alfian Noor',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          const Text(
            'NPM : 2410020146',
            style: TextStyle(
              fontSize: 20,
              color: Colors.blue,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const Text(
            'Kelas : Mobile prog. kls. 5A SI NonReg BJM',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
          const Text(
            'Kontak :  082148847672',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
          const Text(
            'Alamat : Komp. Meranti Jl. Madinah II Jalur 1 No.17 Bjm',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          TextButton(
            onPressed: home,
            style: TextButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
            ),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.arrow_back),
                SizedBox(
                  width: 8,
                ),
                Text('Kembali')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
