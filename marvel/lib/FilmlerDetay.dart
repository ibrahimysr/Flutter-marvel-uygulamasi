import 'package:flutter/material.dart';

import 'filmler.dart';

class FilmlerDetay extends StatefulWidget {
  late filmler film;

  FilmlerDetay(this.film);

  @override
  State<FilmlerDetay> createState() => _FilmlerDetayState();
}

class _FilmlerDetayState extends State<FilmlerDetay> {
  @override
  Widget build(BuildContext context) {
    var ekranbilgisi = MediaQuery.of(context);
    final double ekrangenisligi = ekranbilgisi.size.width;
    final double ekranyuksekligi = ekranbilgisi.size.height;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "${widget.film.film_ad}",
            style: TextStyle(fontSize: 30, fontFamily: "font2"),
          ),
          centerTitle: true,
        ),
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 75, top: 15, bottom: 10, right: 75),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: Container(
                    child: Image.asset(
                      "resimler/${widget.film.film_resim}",
                    ),
                  ),
                ),
              ),
              Row(children: <Widget>[
                Expanded(
                  child: new Container(
                      margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                      child: Divider(
                        color: Colors.white,
                        height: 36,
                      )),
                ),
                Text(
                  "▲",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Expanded(
                  child: new Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                      child: Divider(
                        color: Colors.white,
                        height: 36,
                      )),
                ),
              ]),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text("Yönetmen: ${widget.film.yonetmen_ad}",
                    style: TextStyle(
                        fontSize: 27,
                        color: Colors.white,
                        fontFamily: "font2")),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      " Imdb:${widget.film.film_imdb}",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontFamily: "font2"),
                    ),
                    Text("Çıkıs Tarihi:${widget.film.film_tarih}",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontFamily: "font2")),
                  ],
                ),
              ),
              Text("${widget.film.film_aciklama}",
                  style: TextStyle(
                      fontSize: 20, color: Colors.white, fontFamily: "font2")),
            ],
          ),
        ),
      ),
    );
  }
}
