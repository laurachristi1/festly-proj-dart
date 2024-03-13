import 'package:flutter/material.dart';

class DetalhesEvento extends StatelessWidget {
  final String title;
  final String imageAsset;

  DetalhesEvento({required this.title, required this.imageAsset});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Detalhes do Evento',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        backgroundColor: Colors.transparent,
         iconTheme: IconThemeData(color: Colors.white)
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            Container(
              width: double.infinity,
              height: 240,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(imageAsset),
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'MAIS UMA MARATONA DE CICLISMO CHEGANDO E DESSA VEZ MAIS INSANA QUE NUNCA',
              style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(height: 18),
            const Text(
              'Uma trilha cheia de obstáculos e manobras, se quiser sobreviver e não se ralar, é bom que a manutenção da sua Bike esteja em dia, pois o parque Ibirapuera vai pegar fogo na pista',
              style: TextStyle(fontSize: 17, color: Colors.white),
            ),
            const SizedBox(height: 45),
            Row(
              children: [
                Icon(Icons.calendar_today, color: Colors.white, size: 24),
                const SizedBox(width: 8),
                const Text(
                  '12 de Abril de 2024',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.location_on, color: Colors.white, size: 24),
                const SizedBox(width: 8),
                const Text(
                  'Ibirapuera - São Paulo',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.credit_card, color: Colors.green, size: 24),
                const SizedBox(width: 8),
                const Text(
                  'Parcelamos em até 12x',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                ),
              ],
            ),
            const SizedBox(height: 30),
            const Text(
              'Avaliação:',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Row(
              children: [
                Icon(Icons.star, color: Colors.yellow, size: 20),
                Icon(Icons.star, color: Colors.yellow, size: 20),
                Icon(Icons.star, color: Colors.yellow, size: 20),
                Icon(Icons.star_half, color: Colors.yellow, size: 20),
                Icon(Icons.star_border, color: Colors.yellow, size: 20),
              ],
            ),
            const SizedBox(height: 25),
            ElevatedButton(
              onPressed: () {},
                child: Text(
                  'Comprar ingressos',
                  style: TextStyle(color: Colors.white, fontSize: 20), // Ajuste o tamanho da letra aqui
                ),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.green[800],
                  minimumSize: Size(double.infinity, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),

          ],
        ),
      ),
    );
  }
}
