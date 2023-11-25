import 'package:flutter/material.dart';
import 'package:recipe_app/homepage.dart';
import 'package:recipe_app/model/masakan.dart';

class DetailPage extends StatelessWidget {
  final Masakan masakan;

  const DetailPage({super.key, required this.masakan});

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
                            MaterialPageRoute(
                                builder: (context) => const HomePage()),
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
            Container(
              margin: const EdgeInsets.only(top: 15, left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Deskripsi",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
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
