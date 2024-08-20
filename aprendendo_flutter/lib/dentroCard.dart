import 'package:flutter/material.dart';

class DentroCar extends StatefulWidget {
  const DentroCar({super.key});

  @override
  State<DentroCar> createState() => _DentroCarState();
}

class _DentroCarState extends State<DentroCar> {
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
                  child: Image.asset("assets/imagens/livro1.jpeg"),
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                "A Hipótese do Amor",
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
                "De Ali Hazelwood",
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
              "Quando um namoro de mentira entre cientistas encontra a irresistível força da atração, todas as teorias cuidadosamente calculadas sobre o amor são postas à prova. Olive Smith, aluna do doutorado em Biologia da Universidade Stanford, acredita na ciência – não em algo incontrolável como o amor. Depois de sair algumas vezes com Jeremy, ela percebe que sua melhor amiga gosta dele e decide juntá-los. Para mostrar que está feliz com essa escolha, Olive precisa ser convincente: afinal, cientistas exigem provas.",
              textAlign: TextAlign.justify, // Justifica o texto
              style: TextStyle(
                height: 1.5, // Ajusta o espaçamento entre linhas
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
            margin: const EdgeInsets.only(
                right: 35, left: 35, top: 20), // Margem externa do Container
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
                  "Porque estou começando a me perguntar se é isto que significa amar: concordar em destroçar a si mesmo em mil pedaços para que a outra pessoa permaneça inteira.",
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
              padding:
                  const EdgeInsets.all(8.0), // Padding interno para o texto
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "A vida acadêmica tira muita coisa de você e te dá muito pouco em troca. É difícil se manter firme se você não tiver uma boa motivação pra isso.",
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
