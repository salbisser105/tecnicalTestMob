import 'dart:async';

import 'package:flutter/material.dart';

class PreloaderScreen extends StatefulWidget {
  const PreloaderScreen({Key? key}) : super(key: key);

  @override
  State<PreloaderScreen> createState() => _PreloaderScreenState();
}

class _PreloaderScreenState extends State<PreloaderScreen> {
  @override
  void initState() {
    super.initState();

    startTimer();
  }

  startTimer() async {
    var duration = const Duration(seconds: 5);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushNamed(context, '/home');
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              'Catbreeds',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 24,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.25,
            width: MediaQuery.of(context).size.width * 0.5,
            child: Image.asset(
              'assets/gato.png',
              fit: BoxFit.cover,
              repeat: ImageRepeat.noRepeat,
              height: MediaQuery.of(context).size.height,
            ),
          ),
        ],
      ),
    );
  }
}
