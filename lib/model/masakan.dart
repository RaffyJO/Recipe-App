class Masakan {
  String name;
  String imageUrl;
  int time;
  int calories;
  String description;
  String type;
  List<String> ingredients;
  List<String> step;

  Masakan({
    required this.name,
    required this.imageUrl,
    required this.time,
    required this.calories,
    required this.description,
    required this.type,
    required this.ingredients,
    required this.step,
  });
}

var resepMasakan = [
  Masakan(
      name: "Mie Aceh",
      imageUrl:
          "https://resepkoki.id/wp-content/uploads/2021/03/Resep-Mie-Aceh.jpg",
      time: 45,
      calories: 500,
      description:
          "Mie Aceh adalah hidangan khas yang berasal dari Aceh, Indonesia. Mie ini terkenal karena kepedasannya yang khas dan cita rasa rempah yang melimpah.",
      type: "makanan",
      ingredients: [
        "250 gram mie telur",
        "200 gram daging sapi",
        "100 gram kecambah",
        "2 batang daun bawang",
        "4 sendok makan minyak goreng",
        "4 butir bawang merah",
        "3 siung bawang putih",
        "Garam, gula, dan kaldu sapi bubuk secukupnya",
        "Air secukupnya",
      ],
      step: [
        "Panaskan minyak goreng dalam wajan. Tumis bawang merah, bawang putih, cabai merah, cabai hijau, lengkuas, daun salam, dan serai hingga harum.",
        "Tambahkan daging sapi, masak hingga berubah warna.",
        "Masukkan terasi bakar, aduk rata.",
        "Tuangkan air secukupnya, biarkan mendidih.",
        "Setelah air mendidih, tambahkan garam, gula, dan kaldu sapi bubuk sesuai selera.",
        "Masukkan kecambah, daun bawang, dan mie yang sudah direbus. Aduk rata hingga mie tercampur dengan baik.",
        "Biarkan mie dan bahan lainnya matang dan meresap dengan api kecil hingga kuah menyusut.",
        "Koreksi rasa sesuai selera, pastikan mie dan daging matang.",
        "Angkat dan sajikan Mie Aceh Pedas dalam mangkuk. Hidangkan selagi hangat.",
      ]),
  Masakan(
      name: "Nasi Goreng",
      imageUrl:
          "https://www.jocooks.com/wp-content/uploads/2023/09/nasi-goreng-1-23.jpg",
      time: 10,
      calories: 512,
      description:
          "Nasi Goreng Spesial adalah hidangan khas Indonesia yang sangat populer dan nikmat. Dibuat dari nasi putih yang diolah dengan bumbu-bumbu yang khas, nasi goreng ini memberikan sensasi cita rasa yang lezat dan memikat lidah.",
      type: "makanan",
      ingredients: [
        "200g nasi putih",
        "2 butir telur ayam",
        "Daging ayam, sapi, atau udang (pilih sesuai selera)",
        "Sayuran (wortel, kacang polong, buncis)",
        "Bawang putih, bawang merah, dan cabai merah",
        "Kecap manis dan kecap asin",
        "Garam, merica, dan kaldu ayam bubuk",
        "Minyak goreng untuk menumis",
      ],
      step: [
        "Panaskan sedikit minyak goreng di wajan atau wok dengan api sedang.",
        "Tumis bawang putih, bawang merah, dan cabai merah hingga harum.",
        "Masukkan daging ayam, sapi, atau udang.",
        "Tumis hingga daging berubah warna.",
        "Dorong bahan-bahan ke pinggir wajan, tambahkan telur kocok. Aduk rata hingga telur setengah matang.",
        "Campur telur dengan bahan lainnya, masukkan sayuran dan aduk rata hingga sayuran layu.",
        "Tambahkan nasi putih yang sudah dingin. Aduk rata dan pastikan nasi tercampur dengan baik.",
        "Tuangkan kecap manis dan kecap asin sesuai selera, aduk rata.",
        "Sajikan Nasi Goreng Spesial dalam piring, bisa dihias dengan irisan timun atau tomat cherry.",
      ]),
  Masakan(
      name: "Soto Ayam",
      imageUrl:
          "https://resepkoki.id/wp-content/uploads/2019/11/Soto-Ayam-Bening.jpg",
      time: 45,
      calories: 500,
      description:
          "Mie Aceh adalah hidangan khas yang berasal dari Aceh, Indonesia. Mie ini terkenal karena kepedasannya yang khas dan cita rasa rempah yang melimpah.",
      type: "makanan",
      ingredients: [
        "250 gram mie telur",
        "200 gram daging sapi",
        "100 gram kecambah",
        "2 batang daun bawang",
        "4 sendok makan minyak goreng",
        "4 butir bawang merah",
        "3 siung bawang putih",
        "Garam, gula, dan kaldu sapi bubuk secukupnya",
        "Air secukupnya",
      ],
      step: [
        "Panaskan minyak goreng dalam wajan. Tumis bawang merah, bawang putih, cabai merah, cabai hijau, lengkuas, daun salam, dan serai hingga harum.",
        "Tambahkan daging sapi, masak hingga berubah warna.",
        "Masukkan terasi bakar, aduk rata.",
        "Tuangkan air secukupnya, biarkan mendidih.",
        "Setelah air mendidih, tambahkan garam, gula, dan kaldu sapi bubuk sesuai selera.",
        "Masukkan kecambah, daun bawang, dan mie yang sudah direbus. Aduk rata hingga mie tercampur dengan baik.",
        "Biarkan mie dan bahan lainnya matang dan meresap dengan api kecil hingga kuah menyusut.",
        "Koreksi rasa sesuai selera, pastikan mie dan daging matang.",
        "Angkat dan sajikan Mie Aceh Pedas dalam mangkuk. Hidangkan selagi hangat.",
      ]),
  Masakan(
      name: "Sate Kambing",
      imageUrl: "https://metrum.co.id/kanal/uploads/2021/04/sate-kambing.jpg",
      time: 45,
      calories: 500,
      description:
          "Mie Aceh adalah hidangan khas yang berasal dari Aceh, Indonesia. Mie ini terkenal karena kepedasannya yang khas dan cita rasa rempah yang melimpah.",
      type: "makanan",
      ingredients: [
        "250 gram mie telur",
        "200 gram daging sapi",
        "100 gram kecambah",
        "2 batang daun bawang",
        "4 sendok makan minyak goreng",
        "4 butir bawang merah",
        "3 siung bawang putih",
        "Garam, gula, dan kaldu sapi bubuk secukupnya",
        "Air secukupnya",
      ],
      step: [
        "Panaskan minyak goreng dalam wajan. Tumis bawang merah, bawang putih, cabai merah, cabai hijau, lengkuas, daun salam, dan serai hingga harum.",
        "Tambahkan daging sapi, masak hingga berubah warna.",
        "Masukkan terasi bakar, aduk rata.",
        "Tuangkan air secukupnya, biarkan mendidih.",
        "Setelah air mendidih, tambahkan garam, gula, dan kaldu sapi bubuk sesuai selera.",
        "Masukkan kecambah, daun bawang, dan mie yang sudah direbus. Aduk rata hingga mie tercampur dengan baik.",
        "Biarkan mie dan bahan lainnya matang dan meresap dengan api kecil hingga kuah menyusut.",
        "Koreksi rasa sesuai selera, pastikan mie dan daging matang.",
        "Angkat dan sajikan Mie Aceh Pedas dalam mangkuk. Hidangkan selagi hangat.",
      ]),
];
