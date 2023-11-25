import 'package:flutter/material.dart';
import 'package:recipe_app/detailPage.dart';
import 'package:recipe_app/model/masakan.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String searchText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        title: const Text(
          "Kumpulan Resep",
          style: TextStyle(color: Colors.black, fontSize: 17),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.black, // Icon "back"
          onPressed: () {
            // Fungsi yang dipanggil saat tombol "back" ditekan
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
          child: Container(
            child: Column(
              children: [
                searchBox(),
                Expanded(
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: _searchRecipes(searchText).length,
                      itemBuilder: (context, index) {
                        List<Masakan> searchResults =
                            _searchRecipes(searchText);

                        if (index < searchResults.length) {
                          final Masakan masakan = searchResults[index];
                          return InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return DetailPage(
                                  masakan: masakan,
                                );
                              }));
                            },
                            child: Card(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(
                                    height: 150,
                                    width: 120,
                                    child: Expanded(
                                      flex: 1,
                                      child: Image.network(
                                        masakan.imageUrl,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            masakan.name,
                                            style: const TextStyle(
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Text(masakan.description),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        }
                        return null;
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<Masakan> _searchRecipes(String searchText) {
    return resepMasakan.where((masakan) {
      return masakan.name.toLowerCase().contains(searchText.toLowerCase());
    }).toList();
  }

  Widget searchBox() {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 15, 10, 20),
      padding: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey),
      ),
      child: TextField(
        onChanged: (value) {
          setState(() {
            searchText = value;
          });
        },
        textAlignVertical: TextAlignVertical.center,
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.all(0),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.grey,
            size: 20,
          ),
          border: InputBorder.none,
          hintText: 'Cari resep di sini....',
          hintStyle: TextStyle(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
