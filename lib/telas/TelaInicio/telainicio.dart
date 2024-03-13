import 'package:festly/telas/TelaInicio/telaEvento.dart';
import 'package:flutter/material.dart';
import 'package:festly/CustomWidgets/destaque.dart';
import 'package:festly/CustomWidgets/maisInfo.dart';
import 'package:festly/CustomWidgets/circulohori.dart';
import 'package:festly/CustomWidgets/search.dart';

List<Map<String, String>> items = [
  {"img": "assets/iconeFesta.png", "text": "Baladas"},
  {"img": "assets/iconeSport.png", "text": "Esportes"},
  {"img": "assets/iconeComida.png", "text": "Gastronomia"},
  {"img": "assets/iconeComedia.png", "text": "Comédia"},
  {"img": "assets/iconeTecn.png", "text": "Tecnologia"},
];

class TelaInicio extends StatefulWidget {
  const TelaInicio({Key? key}) : super(key: key);

  @override
  State<TelaInicio> createState() => _TelaInicioState();
}

class _TelaInicioState extends State<TelaInicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 25),
            SearchTop(),
            SizedBox(height: 20),
            verMais(items,
                title: "Mais de 1.000 Eventos.",
                subtitle: "Eleve suas experiências a novas alturas."),
            circuloContainer(items),
            destaqueS(title: 'Destaques'),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: SizedBox(
                height: 220,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    buildProductCard('Maratona Ciclismo', 'assets/ciclismo.png'),
                    buildProductCard('Cinema drive-in', 'assets/drive_thru.png'),
                    buildProductCard('UNIVERSO FIGHT ', 'assets/luta.png'),
                    buildProductCard('15° Piquenique', 'assets/piquenique.png'),
                    buildProductCard('Lady Marmalade', 'assets/cabaret.png'),
                    buildProductCard('Happy Hour', 'assets/postHappyHour.png'),
                    buildProductCard('Bar da Cachaça', 'assets/bebida.png'),
                  ],
                ),
              ),
            ),
            destaqueS(title: 'Esportes'),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: SizedBox(
                height: 220,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    buildProductCard('NBB 2023', 'assets/postBasqueteUniversitario.png'),
                    buildProductCard('Copa de Beach Tênis', 'assets/postBeachTennis.png'),
                    buildProductCard('Campeonato Hipismo', 'assets/postCorridaCavalo.png'),
                    buildProductCard('Skate Festival', 'assets/postSkateFestival.png'),
                    buildProductCard('Torneio de Golf', 'assets/postTorneioGolf.png'),
                    buildProductCard('La Liga Vôlei de Praia', 'assets/postVoleiPraia.png'),
                  ],
                ),
              ),
            ),
            destaqueS(title: 'Cultural'),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: SizedBox(
                height: 220,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    buildProductCard('Festival de Karaokê', 'assets/postKaraoke.png'),
                    buildProductCard('Expo Dia da Consc. Negra','assets/postConscienciaNegra.png'),
                    buildProductCard('Exposição de Artes', 'assets/postBienalArtes.png'),
                    buildProductCard('Competições Das Bruxas', 'assets/posDiaDasBruxas.png'),
                    buildProductCard('Festival de Festa Junina', 'assets/postFestaJunina.png'),
                    buildProductCard('Festival do Morango', 'assets/postFestivalMorango.png'),
                    buildProductCard('Folclore Brasileiro', 'assets/postBumbaMeuBoi.png'),
                    buildProductCard('Evento Oktoberfest', 'assets/postOktoberfest.png'),
                  ],
                ),
              ),
            ),
            destaqueS(title: 'Shows'),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: SizedBox(
                height: 220,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    buildProductCard('Festa Anos 2000', 'assets/postAnos2000.png'),
                    buildProductCard('Pagode para Todos', 'assets/postSambaAlmeida.png'),
                    buildProductCard('O Baile é Delas', 'assets/postBaileDelas.png'),
                    buildProductCard('Festival do Rock', 'assets/postDiaDoRock.png'),
                    buildProductCard('Festa Neon', 'assets/postFestaNeon.png'),
                    buildProductCard('Festival Indie Rock', 'assets/postFestivalMusica.png'),
                    buildProductCard('Rave do Futuro', 'assets/postNeonPartyRave.png'),
                    buildProductCard('Summer Fest', 'assets/postSummerFest.png'),
                    buildProductCard('Baile Funk', 'assets/potsBaileFunk.png'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildProductCard(String title, String imageAsset) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetalhesEvento(
              title: title,
              imageAsset: imageAsset,
            ),
          ),
        );
      },
      child: Container(
        width: 200,
        margin: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 160,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imageAsset),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
