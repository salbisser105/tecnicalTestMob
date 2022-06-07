import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../models/cat_model.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  late Future<List<CatModel>> listado;
  @override
  void initState() {
    super.initState();
    getCatsList();
  }
  Future<List<CatModel>> getCatsList()async{
    var url = Uri.parse('https://api.thecatapi.com/v1/breeds');
    final response = await http.get(url,headers:{HttpHeaders.authorizationHeader: 'bda53789-d59e-46cd-9bc4-2936630fde39'} );
    List<CatModel> catLists = [];

    if (response.statusCode == 200){
      String body = utf8.decode(response.bodyBytes);
      final jsonData = jsonDecode(body);
      for (var item in jsonData){
        catLists.add(
          CatModel(
            adaptability: item["adaptability"],
            affectionLevel: item["affection_level"] ,
            childFriendly: item["child_friendly"] ,
            countryCode:item['country_code'] ?? 'CO',
            countryCodes:item["country_code"] ,
            description:item["description"],
            dogFriendly:item["dog_friendly"],
            energyLevel:item["energy_level"],
            experimental:item["experimental"] , 
            grooming: item["grooming"],
            hairless: item["hairless"],
            healthIssues: item["health_issues"],
            id: item["id"],
            // image: item["image"]["url"],
            indoor:item["indoor"] ,
            intelligence: item["intelligence"] ,
            lap: item["lap"] ?? 0,
            lifeSpan: item["life_span"],
             name: item["name"],
             natural:item["natural"],
             origin: item["origin"],
             rare: item["rare"],
             referenceImageId: item["reference_image_id"] ?? '',
             sheddingLevel: item["shedding_level"],
             shortLegs: item["short_legs"],
             socialNeeds: item["social_needs"],
             strangerFriendly: item["stranger_friendly"],
             suppressedTail: item["suppressed_tail"] ,
             temperament: item["temperament"],
             vetstreetUrl: item["vetstreet_url"] ?? '',
             wikipediaUrl:item["wikipedia_url"] ?? '' ,
             bidability: item["bidability"] ?? 0,
             catFriendly: item["cat_friendly"] ?? 0)
        );
        print('eso');
      }

    }else{
      throw Exception('Fallo la conexión');
    }
    return catLists;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Catbreeds')),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          const SizedBox(height: 15),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              width: MediaQuery.of(context).size.width,
              child: TextFormField(
                decoration: const InputDecoration(
                    hintText: 'Buscar',
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.search)),
              )),
          const Center(
            child: Text('hola'),
          )
        ],
      ),
    );
  }
}
