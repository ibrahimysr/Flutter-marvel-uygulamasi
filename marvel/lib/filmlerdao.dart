import 'package:marvel/filmler.dart';

import 'Veritabaniyardimcisi.dart';

class filmerdao {

  Future<List<filmler>> Tumkategoriler() async {
    var db = await VeritabaniYardimcisi.veritabanierisim();

    List<Map<String, dynamic>> maps =
    await db.rawQuery("SELECT * FROM filmler");

    return List.generate(maps.length, (i) {
      var satir = maps[i];

      return filmler(satir["film_id"], satir["film_ad"], satir["film_tarih"], satir["film_imdb"],
          satir["film_aciklama"], satir["yonetmen_ad"], satir["film_resim"]);
    });
  }


}