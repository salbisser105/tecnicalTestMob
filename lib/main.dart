import 'package:flutter/material.dart';
import 'package:tecnical_test_mob/src/ui/pages/home_page/home_page.dart';
import 'package:tecnical_test_mob/src/ui/pages/splash/pre_loader_page.dart';

void main() {
  runApp(const Cat());
}

class Cat extends StatelessWidget {
  const Cat({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      routes: {'/home': (context) => const HomePage()},
      home: const PreloaderScreen(),
    );
  }
}
