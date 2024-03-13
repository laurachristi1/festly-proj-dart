import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TelaMaps extends StatelessWidget {
  const TelaMaps({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
            decoration: const BoxDecoration(
              border: Border(
                  top: BorderSide(
                color: Colors.white,
                width: 2.0,
                strokeAlign: BorderSide.strokeAlignInside,
              )),
              gradient: LinearGradient(
                colors: [Color.fromARGB(255, 119, 140, 163), Color(0xFF0D1B2A)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.16, 0.4],
              ),
            ),
            width: 430,
            height: 750,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/mapa2.png',
                ),
                Text(
                  "Encontre facilmente eventos ao seu redor. Usar o \n mapa requer o uso da localização",
                  textAlign: TextAlign.center,
                  selectionColor: Colors.white,
                  style: GoogleFonts.nunitoSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.blue),
                      ),
                      onPressed: () {},
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Align(
                            alignment: Alignment.center,
                          ),
                          Icon(Icons.navigation),
                          Text('Ver eventos perto de mim'),
                        ],
                      )),
                ),
                TextButton(
                  
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                    onPressed: () {},
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.center,
                        ),
                        Text('Escolher uma cidade manualmente'),
                      ],
                    )),
              ],
            ))
      ],
    ));
  }
}
