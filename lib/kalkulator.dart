import 'package:aplikasi_kalkulator/home.dart';
import 'package:aplikasi_kalkulator/lingkaran.dart';
import 'package:aplikasi_kalkulator/persegi.dart';
import 'package:aplikasi_kalkulator/profile.dart';
import 'package:flutter/material.dart';

class Kalkulator extends StatefulWidget {
  const Kalkulator({super.key});

  @override
  State<Kalkulator> createState() => _KalkulatorState();
}

class _KalkulatorState extends State<Kalkulator> {
  var activeScreen = 'home-screen';

  void homeWidget() {
    setState(() {
      activeScreen = 'home-screen';
    });
  }

  void profileScreen() {
    setState(() {
      activeScreen = 'profile-screen';
    });
  }

  void lingkaranScreen() {
    setState(() {
      activeScreen = 'lingkaran-screen';
    });
  }

  void persegiScreen() {
    setState(() {
      activeScreen = 'persegi-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = HomeScreen(
      profile: profileScreen,
      lingkaran: lingkaranScreen,
      persegi: persegiScreen,
    );

    if (activeScreen == 'persegi-screen') {
      screenWidget = const Persegi();
    }

    if (activeScreen == 'lingkaran-screen') {
      screenWidget = const Lingkaran();
    }

    if (activeScreen == 'profile-screen') {
      screenWidget = ProfilePage(home: homeWidget);
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("UNISKA MAB"),
        ),
        body: Container(
          child: screenWidget,
        ),
      ),
    );
  }
}
