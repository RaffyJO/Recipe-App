class Masakan {
  String name;
  String imageUrl;
  int time;
  int calories;
  String description;
  String type;
  bool isFavorite;
  List<String> ingredients;
  List<String> step;

  Masakan({
    required this.name,
    required this.imageUrl,
    required this.time,
    required this.calories,
    required this.description,
    required this.type,
    required this.isFavorite,
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
      isFavorite: false,
      ingredients: [
        "250 gram mie telur sudah direbus",
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
        "Panaskan minyak goreng dalam wajan.",
        "Tumis semua bahan hingga harum.",
        "Masukkan daging sapi hingga berubah warna.",
        "Masukkan terasi bakar, aduk rata.",
        "Tuangkan air secukupnya, biarkan mendidih.",
        "Tambahkan garam, gula, dan kaldu sapi bubuk.",
        "Masukkan kecambah, daun bawang, dan mie.",
        "Aduk rata hingga mie tercampur dengan baik.",
        "Biarkan mie dan bahan lainnya matang dan meresap.",
        "Koreksi rasa, pastikan mie dan daging matang.",
        "Angkat dan sajikan Mie Aceh Pedas dalam mangkuk.",
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
      isFavorite: true,
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
        "Panaskan sedikit minyak goreng di wajan api sedang.",
        "Tumis bawang putih, bawang merah, dan cabai merah.",
        "Masukkan daging ayam, sapi, atau udang.",
        "Tumis hingga daging berubah warna.",
        "Masukkan telur kocok, aduk hingga setengah matang.",
        "Masukkan sayuran dan aduk rata hingga sayuran layu.",
        "Tambahkan nasi putih dan aduk rata.",
        "Tuangkan kecap manis dan kecap asin sesuai selera.",
        "Sajikan Nasi Goreng Spesial dalam piring.",
      ]),
  Masakan(
      name: "Soto Ayam",
      imageUrl:
          "https://resepkoki.id/wp-content/uploads/2019/11/Soto-Ayam-Bening.jpg",
      time: 60,
      calories: 400,
      description:
          "Soto Ayam adalah hidangan sup khas Indonesia yang begitu lezat dan menyehatkan. Terdiri dari daging ayam yang empuk, mie soun yang kenyal, dan kuah kaldu yang kaya rasa rempah.",
      type: "makanan",
      isFavorite: false,
      ingredients: [
        "500 gram daging ayam, potong menjadi bagian kecil",
        "200 gram mie soun, rendam air panas",
        "100 gram tauge, bersihkan",
        "2 batang daun bawang dan batang seledri, iris halus",
        "1 batang serai, memarkan",
        "2 lembar daun salam",
        "2 cm lengkuas, memarkan",
        "4 butir bawang merah, haluskan",
        "3 siung bawang putih, haluskan",
        "1 sdm minyak sayur",
        "Garam dan merica secukupnya",
        "Air secukupnya",
      ],
      step: [
        "Rebus daging ayam pada air mendidih hingga matang.",
        "Angkat dan suwir-suwir daging ayam.",
        "Tumis harum bawang merah dan bawang putih.",
        "Tambahkan lengkuas, serai, daun salam, dan minyak.",
        "Masukkan dan aduk daging ayam yang telah disuwir.",
        "Tuangkan air secukupnya biarkan mendidih.",
        "Beri garam serta merica sesuai selera.",
        "Masukkan mie soun, tauge, daun bawang, dan seledri.",
        "Masak sebentar hingga semua bahan matang.",
        "Soto Ayam siap disajikan.",
      ]),
  Masakan(
      name: "Sate Kambing",
      imageUrl: "https://metrum.co.id/kanal/uploads/2021/04/sate-kambing.jpg",
      time: 60,
      calories: 600,
      description:
          "Sate Kambing adalah hidangan tradisional Indonesia yang lezat dan kaya akan rempah. Daging kambing yang dipotong kecil-kecil disajikan dalam tusukan bambu dan dipanggang hingga matang.",
      type: "makanan",
      isFavorite: true,
      ingredients: [
        "500 gram daging kambing, potong kotak kecil",
        "Tusukan sate bambu, rendam dalam air",
        "200 ml santan kelapa",
        "2 sendok makan kecap manis",
        "2 sendok makan minyak goreng",
        "Siapkan bumbu marinasi",
        "Siapkan bumbu kacang",
        "Garam dan gula secukupnya",
        "Air secukupnya",
      ],
      step: [
        "Campurkan semua bahan bumbu marinasi aduk rata.",
        "Lumuri daging dengan bumbu, diamkan beberapa jam.",
        "Tusukkan potongan daging kambing ke tusukan sate.",
        "Campurkan santan kelapa, kecap, dan minyak goreng.",
        "Celupkan sate ke dalam campuran tadi.",
        "Panggang sate hingga berwarna kecoklatan.",
        "Campurkan semua bahan bumbu kacang",
        "Tambahkan air secukupnya",
        "Sate Kambing siap disajikan dengan bumbu kacang.",
      ]),
  Masakan(
      name: "Es Degan",
      imageUrl:
          "https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2022/08/24033527/Berapa-Kalori-yang-Terdapat-dalam-Es-Kelapa_.jpg",
      time: 15,
      calories: 100,
      description:
          "Es degan adalah minuman segar yang terbuat dari air kelapa muda yang dicampur dengan potongan daging kelapa dan es serut.",
      type: "minuman",
      isFavorite: true,
      ingredients: [
        "2 buah kelapa muda",
        "Air kelapa dari 2-3 buah kelapa muda",
        "Gula kelapa secukupnya (sesuai selera)",
        "Es batu secukupnya",
        "Sirup cocopandan atau sirup kelapa (opsional)",
      ],
      step: [
        "Blender daging kelapa dengan air kelapa hingga halus.",
        "Saring dan tambahkan gula aduk hingga larut.",
        "Letakkan potongan daging kelapa di dalam gelas.",
        "Tuangkan santan dan daging kelapa ke dalam gelas.",
        "Tambahkan es batu secukupnya.",
        "Tambahkan sirup cocopandan atau sirup kelapa.",
        "Aduk sebentar dan hidangkan es degan segar.",
      ]),
  Masakan(
      name: "Es Cincau",
      imageUrl:
          "https://asset.kompas.com/crops/ujML2slziXXC1Lz0HtIVZzV35gM=/0x22:968x667/750x500/data/photo/2023/04/02/6428eb537500b.jpg",
      time: 15,
      calories: 150,
      description:
          "Es Cincau adalah minuman tradisional Indonesia yang menyegarkan dan memiliki cita rasa unik. Cincau, memberikan sentuhan kenyal dan lembut pada es ini.",
      type: "minuman",
      isFavorite: true,
      ingredients: [
        "Cincau hitam yang telah direbus",
        "Es batu secukupnya",
        "Santan kelapa kental 200 ml",
        "Gula merah serut secukupnya",
        "Sirup gula merah (opsional)",
      ],
      step: [
        "Potong cincau menjadi kecil-kecil.",
        "Panaskan santan dalam panci kecil.",
        "Tambahkan sedikit garam jika diinginkan.",
        "Dinginkan atau simpan di lemari es.",
        "Letakkan potongan cincau ke dalam gelas saji",
        "Tambahkan es batu secukupnya.",
        "Tuangkan santan dan gula merah.",
        "Aduk rata hingga cincau tercampur.",
      ]),
];
