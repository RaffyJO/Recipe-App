import 'package:flutter/material.dart';
import 'package:recipe_app/homepage.dart';
import 'package:recipe_app/model/masakan.dart';

class DetailPage extends StatelessWidget {
  final Masakan masakan;

  const DetailPage({super.key, required this.masakan});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 800) {
          return DetailWebPage(
            masakan: masakan,
          );
        } else {
          return DetailPageMobile(
            masakan: masakan,
          );
        }
      },
    );
  }
}

class DetailPageMobile extends StatelessWidget {
  final Masakan masakan;

  const DetailPageMobile({super.key, required this.masakan});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: <Widget>[
                SizedBox(
                  height: 270,
                  width: MediaQuery.of(context).size.width,
                  child: Image.network(
                    masakan.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.grey[800],
                        ),
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        masakan.name,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      FavoriteButton(
                        masakan: masakan,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          const Icon(
                            Icons.timer_outlined,
                            size: 24,
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          Text(
                            '${masakan.time} min',
                            style: const TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          const Icon(
                            Icons.local_fire_department_outlined,
                            size: 24,
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          Text(
                            '${masakan.calories} cal',
                            style: const TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: const EdgeInsets.only(top: 15, left: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Deskripsi",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      masakan.description,
                      style: const TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15, left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Alat dan Bahan",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ListView.builder(
                      itemCount: masakan.ingredients.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        int count = index + 1;
                        return Text(
                          "$count. ${masakan.ingredients[index]}",
                          style: const TextStyle(fontSize: 15),
                        );
                      })
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15, left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Tahap Pembuatan",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ListView.builder(
                      itemCount: masakan.step.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        int count = index + 1;
                        return Text(
                          "$count. ${masakan.step[index]}",
                          style: const TextStyle(fontSize: 15),
                        );
                      })
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    ));
  }
}

class DetailWebPage extends StatelessWidget {
  final Masakan masakan;

  const DetailWebPage({super.key, required this.masakan});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 64,
          ),
          child: Center(
            child: SizedBox(
              width: screenWidth <= 1200 ? 800 : 1200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SafeArea(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: IconButton(
                              icon: Icon(
                                Icons.arrow_back,
                                color: Colors.grey[800],
                              ),
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePage()),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Resep Masakan',
                          style: TextStyle(
                            fontSize: 32,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 32),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(masakan.imageUrl),
                            ),
                            const SizedBox(height: 16),
                          ],
                        ),
                      ),
                      const SizedBox(width: 32),
                      Expanded(
                        child: Card(
                          child: Container(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Text(
                                  masakan.name,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 30.0,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: <Widget>[
                                        const Icon(Icons.timer_outlined),
                                        const SizedBox(width: 8.0),
                                        Text(
                                          "${masakan.time} min",
                                        ),
                                      ],
                                    ),
                                    FavoriteButton(
                                      masakan: masakan,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    const Icon(
                                      Icons.local_fire_department_outlined,
                                    ),
                                    const SizedBox(width: 8.0),
                                    Text(
                                      "${masakan.calories} cal",
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 16.0),
                                const Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Deskripsi",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(
                                      bottom: 16.0, top: 10),
                                  child: Text(
                                    masakan.description,
                                    textAlign: TextAlign.justify,
                                    style: const TextStyle(
                                      fontSize: 15.0,
                                    ),
                                  ),
                                ),
                                const Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Alat dan Bahan",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Container(
                                    padding: const EdgeInsets.only(
                                        bottom: 16.0, top: 10),
                                    child: ListView.builder(
                                        itemCount: masakan.ingredients.length,
                                        shrinkWrap: true,
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        itemBuilder: (context, index) {
                                          int count = index + 1;
                                          return Text(
                                            "$count. ${masakan.ingredients[index]}",
                                            style:
                                                const TextStyle(fontSize: 15),
                                          );
                                        })),
                                const Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Tahap Pembuatan",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Container(
                                    padding: const EdgeInsets.only(
                                        bottom: 16.0, top: 10),
                                    child: ListView.builder(
                                        itemCount: masakan.step.length,
                                        shrinkWrap: true,
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        itemBuilder: (context, index) {
                                          int count = index + 1;
                                          return Text(
                                            "$count. ${masakan.step[index]}",
                                            style:
                                                const TextStyle(fontSize: 15),
                                          );
                                        })),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// class DetailWebPage extends StatefulWidget {
//   final Masakan masakan;

//   const DetailWebPage({Key? key, required this.masakan}) : super(key: key);

//   @override
//   _DetailWebPageState createState() => _DetailWebPageState();
// }

// class _DetailWebPageState extends State<DetailWebPage> {
//   final _scrollController = ScrollController();

//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;

//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(
//             vertical: 16,
//             horizontal: 64,
//           ),
//           child: Center(
//             child: SizedBox(
//               width: screenWidth <= 1200 ? 800 : 1200,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       SafeArea(
//                         child: Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: CircleAvatar(
//                             backgroundColor: Colors.white,
//                             child: IconButton(
//                               icon: Icon(
//                                 Icons.arrow_back,
//                                 color: Colors.grey[800],
//                               ),
//                               onPressed: () {
//                                 Navigator.pushReplacement(
//                                   context,
//                                   MaterialPageRoute(
//                                       builder: (context) => const HomePage()),
//                                 );
//                               },
//                             ),
//                           ),
//                         ),
//                       ),
//                       const Padding(
//                         padding: EdgeInsets.all(8.0),
//                         child: Text(
//                           'Resep Masakan',
//                           style: TextStyle(
//                             fontSize: 32,
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                   const SizedBox(height: 32),
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Expanded(
//                         child: Column(
//                           children: [
//                             ClipRRect(
//                               borderRadius: BorderRadius.circular(10),
//                               child: Image.network(widget.masakan.imageUrl),
//                             ),
//                             const SizedBox(height: 16),
//                           ],
//                         ),
//                       ),
//                       const SizedBox(width: 32),
//                       Expanded(
//                         child: Card(
//                           child: Container(
//                             padding: const EdgeInsets.all(16),
//                             child: Column(
//                               mainAxisSize: MainAxisSize.max,
//                               children: <Widget>[
//                                 Text(
//                                   widget.masakan.name,
//                                   textAlign: TextAlign.center,
//                                   style: const TextStyle(
//                                     fontSize: 30.0,
//                                   ),
//                                 ),
//                                 Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     Row(
//                                       children: <Widget>[
//                                         const Icon(Icons.timer_outlined),
//                                         const SizedBox(width: 8.0),
//                                         Text(
//                                           "${widget.masakan.time} min",
//                                         ),
//                                       ],
//                                     ),
//                                     FavoriteButton(
//                                       masakan: widget.masakan,
//                                     ),
//                                   ],
//                                 ),
//                                 Row(
//                                   children: <Widget>[
//                                     const Icon(
//                                       Icons.local_fire_department_outlined,
//                                     ),
//                                     const SizedBox(width: 8.0),
//                                     Text(
//                                       "${widget.masakan.calories} cal",
//                                     ),
//                                   ],
//                                 ),
//                                 const SizedBox(height: 16.0),
//                                 const Align(
//                                   alignment: Alignment.topLeft,
//                                   child: Text(
//                                     "Deskripsi",
//                                     style: TextStyle(
//                                         fontSize: 20,
//                                         fontWeight: FontWeight.w500),
//                                   ),
//                                 ),
//                                 Container(
//                                   padding: const EdgeInsets.only(
//                                       bottom: 16.0, top: 10),
//                                   child: Text(
//                                     widget.masakan.description,
//                                     textAlign: TextAlign.justify,
//                                     style: const TextStyle(
//                                       fontSize: 15.0,
//                                     ),
//                                   ),
//                                 ),
//                                 const Align(
//                                   alignment: Alignment.topLeft,
//                                   child: Text(
//                                     "Alat dan Bahan",
//                                     style: TextStyle(
//                                         fontSize: 20,
//                                         fontWeight: FontWeight.w500),
//                                   ),
//                                 ),
//                                 Container(
//                                     padding: const EdgeInsets.only(
//                                         bottom: 16.0, top: 10),
//                                     child: ListView.builder(
//                                         itemCount:
//                                             widget.masakan.ingredients.length,
//                                         shrinkWrap: true,
//                                         physics:
//                                             const NeverScrollableScrollPhysics(),
//                                         itemBuilder: (context, index) {
//                                           int count = index + 1;
//                                           return Text(
//                                             "$count. ${widget.masakan.ingredients[index]}",
//                                             style:
//                                                 const TextStyle(fontSize: 15),
//                                           );
//                                         })),
//                                 const Align(
//                                   alignment: Alignment.topLeft,
//                                   child: Text(
//                                     "Tahap Pembuatan",
//                                     style: TextStyle(
//                                         fontSize: 20,
//                                         fontWeight: FontWeight.w500),
//                                   ),
//                                 ),
//                                 Container(
//                                     padding: const EdgeInsets.only(
//                                         bottom: 16.0, top: 10),
//                                     child: ListView.builder(
//                                         itemCount: widget.masakan.step.length,
//                                         shrinkWrap: true,
//                                         physics:
//                                             const NeverScrollableScrollPhysics(),
//                                         itemBuilder: (context, index) {
//                                           int count = index + 1;
//                                           return Text(
//                                             "$count. ${widget.masakan.step[index]}",
//                                             style:
//                                                 const TextStyle(fontSize: 15),
//                                           );
//                                         })),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     _scrollController.dispose();
//     super.dispose();
//   }
// }

class FavoriteButton extends StatefulWidget {
  final Masakan masakan;

  const FavoriteButton({Key? key, required this.masakan}) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        widget.masakan.isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          widget.masakan.isFavorite = !widget.masakan.isFavorite;
        });
      },
    );
  }
}
