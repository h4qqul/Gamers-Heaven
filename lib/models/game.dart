class Game {
  String bgImg;
  String icon;
  String name;
  String type;
  num score;
  num download;
  num review;
  String desc;
  List<String> imgs;
  num price;

  Game(
    this.bgImg,
    this.icon,
    this.name,
    this.type,
    this.score,
    this.download,
    this.review,
    this.desc,
    this.imgs,
    this.price,
  );
  static List<Game> generateGames() {
    return [
      Game(
        'assets/images/forza5.jpg',
        'assets/images/forza5.png',
        'Forza Horizon 5',
        'Racing',
        4.9,
        50.000,
        14.569,
        'Forza Horizon 5 adalah game bergenre balapan yang dikembangkan oleh Playground Games dan dirilis oleh Xbox Game Studios di tanggal 9 November 2021. Desainer Forza Horizon 5 adalah Ryan Greene, dengan programmer Matt Craven. Game ini berlatar belakang area fiktif yang terinspirasi dari Meksiko. Peta di game ini adalah yang paling besar dalam sejarah Forza Horizon.',
        [
          'assets/images/forza_ss1.jpg',
          'assets/images/forza_ss2.jpg',
        ],
        3.45,
      ),
      Game(
        'assets/images/gta5.jpg',
        'assets/images/gta5_icon.jpg',
        'Grand Theft Auto 5',
        'Action',
        4.9,
        50.000,
        4.568,
        'Forza Horizon 5 adalah game balap',
        [
          'assets/images/forza7_ss.jpg',
          'assets/images/forza7_ss2.jpg',
          'assets/images/forza7_ss3.jpg',
        ],
        4.45,
      ),
      Game(
        'assets/images/forza7.jpg',
        'assets/images/forza7_icon.png',
        'Forza Motorsport',
        'Racing',
        4.7,
        35.000,
        1.479,
        'Balapan lebih dari 500 mobil dunia nyata termasuk mobil balap modern dan lebih dari 100 mobil baru di Forza Motorsport. Jadikan setiap putaran berarti di 20 trek hidup dengan lokasi favorit penggemar dan beberapa tata letak trek untuk dikuasai, masing-masing menampilkan penilaian langsung di trek, waktu yang sepenuhnya dinamis dengan cuaca dan kondisi berkendara unik di mana tidak ada dua putaran yang terasa sama.',
        [
          'assets/images/forza7_ss.jpg',
          'assets/images/forza7_ss2.jpg',
          'assets/images/forza7_ss3.jpg',
        ],
        1.45,
      ),
      Game(
        'assets/images/dball.jpg',
        'assets/images/dball_icon.jpg',
        'Dragon Ball Xenoverse 2',
        'Action',
        4.9,
        50.000,
        4.568,
        'Forza Horizon 5 adalah game balap',
        [
          'assets/images/dball_ss.jpg',
          'assets/images/dball_ss2.jpg',
          'assets/images/dball_ss3.jpg',
        ],
        4.45,
      ),
      Game(
        'assets/images/ark.jpg',
        'assets/images/ark_icon.jpg',
        'ARK Survival  ',
        'Action',
        4.9,
        50.000,
        4.568,
        'Forza Horizon 5 adalah game balap',
        [
          'assets/images/ark_ss1.jpg',
          'assets/images/ark_ss2.jpg',
          'assets/images/ark_ss3.jpg',
        ],
        4.45,
      ),
      Game(
        'assets/images/ride5.jpg',
        'assets/images/ride5_icon.png',
        'Ride 5',
        'Racing',
        4.4,
        3.200,
        2.479,
        'Nyalakan mesin Anda dan bersiaplah untuk melaju ke trek dengan RIDE 5. Pengalaman bermain yang memacu adrenalin dan begitu autentik akan membuat Anda merasa seperti benar-benar berpacu dengan kecepatan sangat tinggi. Temukan sepeda favorit Anda dan lihat yang baru di game sepeda motor terhebat! Balapan di lebih dari 35 trek dan kumpulkan lebih dari 200 sepeda motor dari pabrikan terkenal dunia, setiap elemen dirancang agar Anda merasa seperti sedang mengendarai sepeda sungguhan. INI JALAN YANG PANJANG Bukan hanya kecepatan yang memenangkan perlombaan – Mode ketahanan menghargai ketekunan dan strategi. Waktu tidak lagi menjadi masalah, berkendaralah sepuasnya dengan opsi untuk menyimpan, keluar, dan kembali lagi nanti. Pastikan Anda mengawasi bahan bakar dan pit-stop – saluran bantuan ini dapat dengan cepat menjadi mimpi buruk terburuk Anda!',
        [
          'assets/images/ride_ss1.jpg',
          'assets/images/ride5_ss2.jpg',
          'assets/images/ride5_ss3.jpg',
        ],
        0.11,
      ),
      Game(
        'assets/images/spd.jpg',
        'assets/images/spd_icon.jpg',
        'The Amazing Spiderman 2 ',
        'Action',
        4.9,
        50.000,
        4.568,
        'Forza Horizon 5 adalah game balap',
        [
          'assets/images/spd_ss1.jpg',
          'assets/images/spd_ss2.jpg',
        ],
        4.45,
      ),
      Game(
        'assets/images/nfsheat.jpg',
        'assets/images/nfsheat_icon.jpg',
        'Need For Speed Heat',
        'Racing',
        4.7,
        7.200,
        3.479,
        'Bergegaslah di siang hari dan pertaruhkan semuanya di malam hari dalam Need for Speed Heat, sebuah pembalap ulung yang mengadu Anda dengan pasukan polisi nakal di kota saat Anda berjuang untuk menjadi elit balap jalanan. Pada siang hari, berkompetisi di Speedhunter Showdown, sebuah kompetisi resmi di mana Anda mendapatkan bank untuk menyesuaikan dan meningkatkan garasi mobil berperforma tinggi Anda. Saat pengendaraan Anda ditata dengan sempurna dan disetel dengan baik, dan Anda siap untuk meningkatkan intensitas, berkendaralah di malam hari di mana Anda dan kru Anda mengikuti kompetisi dalam balapan jalanan terlarang yang membangun reputasi Anda dan memberi Anda akses ke balapan yang lebih besar dan bagian yang lebih baik. Namun di balik kegelapan, berpatroli satuan tugas nakal yang ingin menjatuhkan Anda dan menghabiskan semua penghasilan Anda. Hadapi mereka dan pertaruhkan semuanya demi kejayaan bawah tanah atau kembali ke rumah persembunyianmu dan mulai hari yang mendebarkan lainnya. Jalanan, risiko, dan perjalanan tidak pernah berakhir dalam balapan jalanan ini di mana kru Anda bekerja keras, garasi Anda penuh dengan mobil-mobil panas, dan kota ini adalah taman bermain tanpa henti Anda.',
        [
          'assets/images/nfsheat_ss1.jpg',
          'assets/images/nfsheat_ss2.jpg',
          'assets/images/nfsheat_ss3.jpg',
        ],
        2.45,
      ),
      Game(
        'assets/images/rs4.jpg',
        'assets/images/rs4_icon.jpg',
        'Resident Evil 4',
        'Action',
        4.9,
        50.000,
        4.568,
        'Forza Horizon 5 adalah game balap',
        [
          'assets/images/rs4_ss1.jpg',
          'assets/images/rs4_ss2.jpg',
          'assets/images/rs4_ss3.jpg',
        ],
        4.45,
      ),
      Game(
        'assets/images/forza5.jpg',
        'assets/images/forza5.png',
        'Forza Horizon 5',
        'Racing',
        4.9,
        50.000,
        14.569,
        'Forza Horizon 5 adalah game bergenre balapan yang dikembangkan oleh Playground Games dan dirilis oleh Xbox Game Studios di tanggal 9 November 2021. Desainer Forza Horizon 5 adalah Ryan Greene, dengan programmer Matt Craven. Game ini berlatar belakang area fiktif yang terinspirasi dari Meksiko. Peta di game ini adalah yang paling besar dalam sejarah Forza Horizon.',
        [
          'assets/images/forza_ss1.jpg',
          'assets/images/forza_ss2.jpg',
        ],
        3.45,
      ),
      Game(
        'assets/images/gta5.jpg',
        'assets/images/gta5_icon.jpg',
        'Grand Theft Auto 5',
        'Action',
        4.9,
        50.000,
        4.568,
        'Forza Horizon 5 adalah game balap',
        [
          'assets/images/forza7_ss.jpg',
          'assets/images/forza7_ss2.jpg',
          'assets/images/forza7_ss3.jpg',
        ],
        4.45,
      ),
      Game(
        'assets/images/forza7.jpg',
        'assets/images/forza7_icon.png',
        'Forza Motorsport',
        'Racing',
        4.7,
        35.000,
        1.479,
        'Balapan lebih dari 500 mobil dunia nyata termasuk mobil balap modern dan lebih dari 100 mobil baru di Forza Motorsport. Jadikan setiap putaran berarti di 20 trek hidup dengan lokasi favorit penggemar dan beberapa tata letak trek untuk dikuasai, masing-masing menampilkan penilaian langsung di trek, waktu yang sepenuhnya dinamis dengan cuaca dan kondisi berkendara unik di mana tidak ada dua putaran yang terasa sama.',
        [
          'assets/images/forza7_ss.jpg',
          'assets/images/forza7_ss2.jpg',
          'assets/images/forza7_ss3.jpg',
        ],
        1.45,
      ),
      Game(
        'assets/images/ark.jpg',
        'assets/images/ark_icon.jpg',
        'ARK Survival  ',
        'Action',
        4.9,
        50.000,
        4.568,
        'Forza Horizon 5 adalah game balap',
        [
          'assets/images/ark_ss1.jpg',
          'assets/images/ark_ss2.jpg',
          'assets/images/ark_ss3.jpg',
        ],
        4.45,
      ),
      Game(
        'assets/images/ride5.jpg',
        'assets/images/ride5_icon.png',
        'Ride 5',
        'Racing',
        4.4,
        3.200,
        2.479,
        'Nyalakan mesin Anda dan bersiaplah untuk melaju ke trek dengan RIDE 5. Pengalaman bermain yang memacu adrenalin dan begitu autentik akan membuat Anda merasa seperti benar-benar berpacu dengan kecepatan sangat tinggi. Temukan sepeda favorit Anda dan lihat yang baru di game sepeda motor terhebat! Balapan di lebih dari 35 trek dan kumpulkan lebih dari 200 sepeda motor dari pabrikan terkenal dunia, setiap elemen dirancang agar Anda merasa seperti sedang mengendarai sepeda sungguhan. INI JALAN YANG PANJANG Bukan hanya kecepatan yang memenangkan perlombaan – Mode ketahanan menghargai ketekunan dan strategi. Waktu tidak lagi menjadi masalah, berkendaralah sepuasnya dengan opsi untuk menyimpan, keluar, dan kembali lagi nanti. Pastikan Anda mengawasi bahan bakar dan pit-stop – saluran bantuan ini dapat dengan cepat menjadi mimpi buruk terburuk Anda!',
        [
          'assets/images/ride_ss1.jpg',
          'assets/images/ride5_ss2.jpg',
          'assets/images/ride5_ss3.jpg',
        ],
        0.11,
      ),
    ];
  }
}
