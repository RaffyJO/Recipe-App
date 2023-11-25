import 'package:flutter/material.dart';
import 'package:recipe_app/detailPage.dart';
import 'package:recipe_app/model/masakan.dart';
import 'package:recipe_app/searchPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int jumMakanan = 0;
  int jumMinuman = 0;

  void jumMasakan() {
    for (var i = 0; i < resepMasakan.length; i++) {
      final Masakan masakan = resepMasakan[i];
      if (masakan.type == "makanan") {
        jumMakanan++;
      } else {
        jumMinuman++;
      }
    }
  }

  _HomePageState() {
    jumMasakan();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Hallo, Raffy JO',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              ),
              const SizedBox(
                height: 3,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 130,
                      child: const Text(
                        'Apa yang ingin kamu masak hari ini?',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 23),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      height: 45.0,
                      child: Image.network(
                        "https://securewebtechnologies.com/wp-content/uploads/2017/11/my-recipe-logo.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const SearchPage();
                  }));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 52,
                  margin: const EdgeInsets.fromLTRB(10, 15, 10, 20),
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: const Row(
                    children: [
                      SizedBox(
                        width: 12,
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.grey,
                        size: 20,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Cari resep di sini....",
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Rekomendasi Makanan',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 190,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: jumMakanan,
                    itemBuilder: (context, index) {
                      List<int> makananIndices = [];

                      // Cari semua indeks yang memiliki type == "makanan"
                      for (int i = 0; i < resepMasakan.length; i++) {
                        if (resepMasakan[i].type == "makanan") {
                          makananIndices.add(i);
                        }
                      }

                      // Periksa apakah indeks saat ini di dalam rentang indeks makanan
                      if (index < makananIndices.length) {
                        final Masakan masakan =
                            resepMasakan[makananIndices[index]];
                        return InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return DetailPage(
                                masakan: masakan,
                              );
                            }));
                          },
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 0, 15, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.network(
                                    masakan.imageUrl,
                                    width: 140,
                                    height: 160,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Align(
                                  alignment:
                                      const AlignmentDirectional(0.00, 0.00),
                                  child: Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0, 8, 0, 0),
                                    child: Text(
                                      masakan.name,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }
                      return null;
                    }),
              ),
              const Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 10),
                child: Text(
                  'Minuman Segar',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 285,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: jumMinuman,
                    itemBuilder: (context, index) {
                      List<int> minumanIndices = [];

                      // Cari semua indeks yang memiliki type == "minuman"
                      for (int i = 0; i < resepMasakan.length; i++) {
                        if (resepMasakan[i].type == "minuman") {
                          minumanIndices.add(i);
                        }
                      }

                      if (index < minumanIndices.length) {
                        final Masakan masakan =
                            resepMasakan[minumanIndices[index]];
                        return InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return DetailPage(
                                masakan: masakan,
                              );
                            }));
                          },
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 0, 15, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.network(
                                    masakan.imageUrl,
                                    width: 310,
                                    height: 170,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0, 8, 0, 0),
                                    child: Text(
                                      masakan.name,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                SizedBox(
                                  width: 310,
                                  height: 80,
                                  child: Text(
                                    masakan.description,
                                    textAlign: TextAlign.justify,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.normal),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }
                      return null;
                    }),
              ),
              const SizedBox(
                height: 5,
              ),
              const Row(
                children: [
                  Text(
                    'Masakan Favorit',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Icon(
                    Icons.favorite,
                    color: Colors.red, // warna ikon favorit (opsional)
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 190,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: resepMasakan.length,
                    itemBuilder: (context, index) {
                      List<int> makananIndices = [];

                      // Cari semua indeks yang memiliki isFavorit == true
                      for (int i = 0; i < resepMasakan.length; i++) {
                        if (resepMasakan[i].isFavorite == true) {
                          makananIndices.add(i);
                        }
                      }

                      if (index < makananIndices.length) {
                        final Masakan masakan =
                            resepMasakan[makananIndices[index]];
                        return InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return DetailPage(
                                masakan: masakan,
                              );
                            }));
                          },
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 0, 15, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.network(
                                    masakan.imageUrl,
                                    width: 200,
                                    height: 160,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Align(
                                  alignment:
                                      const AlignmentDirectional(0.00, 0.00),
                                  child: Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0, 8, 0, 0),
                                    child: Text(
                                      masakan.name,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }
                      return null;
                    }),
              ),
              const SizedBox(
                height: 10,
              )
            ],
          ),
        )),
      ),
    );
  }
}
