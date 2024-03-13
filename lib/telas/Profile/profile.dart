import 'package:flutter/material.dart';

class TelaPerfil extends StatefulWidget {
  const TelaPerfil({Key? key}) : super(key: key);

  @override
  State<TelaPerfil> createState() => _TelaPerfilState();
}

class _TelaPerfilState extends State<TelaPerfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/fotoPerfil.jpg'),
                    ),
                    Expanded(
                      child: ListTile(
                        title: Text(
                          'Luis Otávio',
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        ),
                        subtitle: Text(
                          'tavinholindodalau@gmail.com',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Editar perfil',
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide(color: Colors.blue, width: 1)),
                      minimumSize: Size(400, 50), //(largura, altura)
                    ),
                  ),
                ),
                SizedBox(height: 65),
                const Text(
                  'Minha Conta',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                const Row(
                  children: [
                    Icon(Icons.lock, color: Colors.white),
                    SizedBox(width: 20),
                    Text(
                      'Alterar Senha',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ],
                ),
                const Divider(color: Color.fromARGB(255, 2, 41, 72),),
                SizedBox(height: 20),
                const Row(
                  children: [
                    Icon(Icons.help, color: Colors.white),
                    SizedBox(width: 10),
                    Text(
                      'Notificações',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ],
                ),
                   const Divider(color: Color.fromARGB(255, 2, 41, 72),),

                 SizedBox(height: 50),
                  const Text(
                  'Central de ajuda',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                   ),
                  ),
                  SizedBox(height: 20),
                 
                  const Row(
                  children: [
                    Icon(Icons.help, color: Colors.white),
                    SizedBox(width: 10),
                    Text(
                      'Suporte- perguntas frequentes',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ],
                ),
                 const Divider(color: Color.fromARGB(255, 2, 41, 72),),
                 SizedBox(height: 50),
                  const Text(
                  'Privacidade',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                   ),
                  ),
                 
                  SizedBox(height: 20),
                  const Row(
                  children: [
                    Icon(Icons.article, color: Colors.white),
                    SizedBox(width: 10),
                    Text(
                      'Termos e Políticas',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ],
                ),
                 const Divider(color: Color.fromARGB(255, 2, 41, 72),),
                   SizedBox(height: 30),
                Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Sair da conta',
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide(color: Colors.red, width: 1)),
                      minimumSize: Size(400, 65), //(largura, altura)
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
