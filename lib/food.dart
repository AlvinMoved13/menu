class food {
  String nama;
  String deskripsi;
  String gambarUtama;
  String detail;
  double harga;
  List<Map<String, String>> bahan;

  food({
    required this.nama,
    required this.deskripsi,
    required this.gambarUtama,
    required this.detail,
    required this.harga,
    required this.bahan,
  });

  static List<food> dummyData = [
    food(
        nama: "Makanan Lezat",
        deskripsi:
            "Perpaduan antara bumbu kare dengan potongan katsu yang bercitarasa",
        gambarUtama: "assets/menu.jpeg",
        detail:
            "Ramen Katsu adalah hidangan Jepang yang menggabungkan mie ramen dengan daging katsu goreng, menciptakan kombinasi gurih dan lezat. Ini menghadirkan cita rasa yang unik dengan mie yang kenyal, kuah kental, dan daging katsu yang renyah.",
        harga: 10000,
        bahan: [
          {"Bahan": 'assets/bahan/bahan.jpeg'},
        ]),
    food(
        nama: "Cemilan",
        deskripsi:
            "Nasi goreng dengan bumbu yang pas, dengan ditambabah topping kwetiau yang menciptakan kesan ciamik pada makanan",
        gambarUtama: "assets/menu.jpeg",
        detail:
            "Nasi goreng kwetiau adalah paduan memikat antara nasi dan mi kwetiau, menggabungkan bumbu pedas, manis, dan gurih yang meresap dalam hidangan lezat ini. Daging, udang, telur, dan sayuran melengkapi hidangan dengan rasa yang kaya dan tekstur yang beragam.",
        harga: 10000,
        bahan: [
          {"Bahan": 'assets/bahan/bahan.jpeg'},
        ]),
    food(
        nama: "Makanan Murah",
        deskripsi:
            "Perpaduan olahan pilihan dalam hidangan yang pas martabak manis dan martabak daging menemani hari anda",
        gambarUtama: "assets/menu.jpeg",
        detail:
            "Martabak asin adalah hidangan gurih dengan adonan tipis yang diisi dengan campuran telur, daging, dan bumbu gurih. Sementara itu, martabak manis adalah varian yang lebih manis, dengan adonan tebal yang diisi dengan gula, susu, keju, dan cokelat.",
        harga: 10000,
        bahan: [
          {"Bahan": 'assets/bahan/bahan.jpeg'},
        ])
  ];
}
