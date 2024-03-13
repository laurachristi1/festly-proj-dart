import 'package:festly/CustomWidgets/menuinferior.dart';
import 'package:festly/telas/Carteira/carteira.dart';
import 'package:festly/telas/Favoritos/favoritos.dart';
import 'package:festly/telas/Maps/maps.dart';
import 'package:festly/telas/Profile/profile.dart';
import 'package:festly/telas/TelaInicio/telainicio.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int itemSelecionado = 0;

  //ir para o próximo item
  void nextStation(int posicao){
    setState(() {
      itemSelecionado = posicao;
    });
  }
  //lista de páginas
  List<Widget> telas = const [
    TelaInicio(),
    TelaMaps(),
    TelaFavoritos(),
    TelaPerfil(),
    TelaCarteira(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:telas.elementAt(itemSelecionado),
      bottomNavigationBar: bottomNavigationBar(itemSelecionado, nextStation),
    );
  }
}

