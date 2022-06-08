import 'package:flutter/material.dart';
import 'package:tecnical_test_mob/src/helpers/search_cats.dart';
import 'package:tecnical_test_mob/src/ui/pages/detail_page/detail_page.dart';

import '../../../helpers/cat_data_handler.dart';
import '../../../models/cat_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<List<CatModel>> cats = DataHandler.getCatsList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Catbreeds')),
        automaticallyImplyLeading: false,
      ),
      body: FutureBuilder(
        future: cats,
        builder: (context, snapshot) {
          if (snapshot.data != null) {
            var catList = snapshot.data as List<CatModel>;
            return SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 15),
                  Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.05,
                      child: GestureDetector(
                        onTap: () {
                          showSearch(
                              context: context,
                              delegate: SearchCats(
                                  catModel: catList, catSuggestions: catList));
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 28),
                          decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            border: Border.all(
                              color: Colors.black,
                              width: 2,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text('Search'),
                              Icon(Icons.search)
                            ],
                          ),
                        ),
                      )),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.7,
                    child: FutureBuilder(
                      future: cats,
                      builder: (context, snapshot) {
                        if (snapshot.data != null) {
                          var generalInfo = snapshot.data as List<CatModel>;
                          return SizedBox(
                            height: MediaQuery.of(context).size.height * 0.3,
                            width: MediaQuery.of(context).size.width * 0.8,
                            child: ListView.builder(
                              itemCount: generalInfo.length,
                              itemBuilder: (context, index) {
                                var catInfo = generalInfo[index];
                                return Column(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    DetailPage(
                                                        title: catInfo.name,
                                                        description: catInfo
                                                            .description,
                                                        url: catInfo.image.url,
                                                        countryCode:
                                                            catInfo.countryCode,
                                                        adaptabilidad: catInfo
                                                            .adaptability
                                                            .toString(),
                                                        inteligencia: catInfo
                                                            .intelligence
                                                            .toString(),
                                                        tiempoDeVida:
                                                            catInfo.lifeSpan)));
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.black,
                                              width: 2,
                                            ),
                                            color: Colors.blueGrey,
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Text(catInfo.name),
                                                const Text('More...')
                                              ],
                                            ),
                                            SizedBox(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.2,
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                child: Image.network(
                                                  catInfo.image.url,
                                                  fit: BoxFit.contain,
                                                )),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Text('Origin Country code\n' +
                                                    catInfo.countryCode),
                                                Text('Intelligence: ' +
                                                    catInfo.intelligence
                                                        .toString()),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    const Divider()
                                  ],
                                );
                              },
                            ),
                          );
                        }
                        return const CircularProgressIndicator();
                      },
                    ),
                  )
                ],
              ),
            );
          }
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
