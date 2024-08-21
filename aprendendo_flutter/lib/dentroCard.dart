import 'package:flutter/material.dart';

class DentroCar extends StatelessWidget {
  final String titulo;
  final String autor;
  final String imagem;
  final String melhoresPartes1;
  final String melhoresPartes2;
  final String sobre;
  const DentroCar(this.imagem, this.titulo, this.autor, this.sobre, this.melhoresPartes1,
      this.melhoresPartes2,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dentro do Livro'),
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.white,
            height: 314,
            width: 426,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset("assets/imagens/$imagem"),
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                titulo,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 13, bottom: 25),
              child: Text(
                autor,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Color.fromARGB(112, 112, 112, 100),
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),
          Divider(
            color: Color(0xFFE6E6E6),
            thickness: 1,
            indent: 40, // Espaço à esquerda da linha
            endIndent: 40, // Espaço à direita da linha
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 35, top: 35),
              child: Text(
                "SOBRE O LIVRO",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 35, left: 35, top: 20),
            child: Text(
              sobre,
              textAlign: TextAlign.justify,
              style: TextStyle(
                height: 1.5,
                fontSize: 13,
                decoration: TextDecoration.none,
                fontWeight: FontWeight.normal,
                color: Color.fromARGB(112, 112, 112, 100),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 35, top: 35),
              child: Text(
                "MELHORES PARTES",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),
          Container(
            width: 240,
            height: 100,
            margin: const EdgeInsets.only(right: 35, left: 35, top: 20),
            decoration: BoxDecoration(
              color: Color(0xFF148AA6),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.all(8.0), // Padding interno para o texto
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  melhoresPartes1,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    height: 1.5,
                    color: Colors.white,
                    fontSize: 13,
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: 240,
            height: 100,
            margin: const EdgeInsets.only(
                right: 35,
                left: 35,
                top: 20,
                bottom: 100), // Margem externa do Container
            decoration: BoxDecoration(
              color: Color(0xFF148AA6),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
               melhoresPartes2,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    height: 1.5,
                    color: Colors.white,
                    fontSize: 13,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
