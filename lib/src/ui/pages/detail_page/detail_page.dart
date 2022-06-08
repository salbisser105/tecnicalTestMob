import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage(
      {Key? key,
      required this.title,
      required this.description,
      required this.url,
      required this.adaptabilidad,
      required this.inteligencia,
      required this.countryCode,
      required this.tiempoDeVida})
      : super(key: key);
  final String title;
  final String description;
  final String url;
  final String adaptabilidad;
  final String inteligencia;
  final String tiempoDeVida;
  final String countryCode;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios, color: Colors.grey),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Text(
          title,
          style: const TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: size.height * 0.5,
            width: size.width * 0.9,
            child: Image(
              image: NetworkImage(url),
              repeat: ImageRepeat.noRepeat,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 10),
          Container(
            color: Colors.blueGrey[300],
            height: size.height * 0.3,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Description:\n' + description,
                        style: const TextStyle(fontSize: 16)),
                    const SizedBox(height: 10),
                    Text('Country code: ' + countryCode,
                        style: const TextStyle(fontSize: 16)),
                    const SizedBox(height: 10),
                    Text('Adaptability: ' + adaptabilidad,
                        style: const TextStyle(fontSize: 16)),
                    const SizedBox(height: 10),
                    Text('Intelligence: ' + inteligencia,
                        style: const TextStyle(fontSize: 16)),
                    const SizedBox(height: 10),
                    Text('Expected life-time: ' + tiempoDeVida + ' years',
                        style: const TextStyle(fontSize: 16)),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
