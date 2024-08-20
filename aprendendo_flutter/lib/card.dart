import 'package:flutter/material.dart';
import 'dentroCard.dart';

class CardLivro extends StatefulWidget {
  final String titulo;
  final String capaLivro;
  final int capitulosTotais;

  CardLivro(this.titulo,this.capaLivro, this.capitulosTotais, {super.key});

  @override
  _CardLivroState createState() => _CardLivroState();
}

class _CardLivroState extends State<CardLivro> {
  int capitulosLidos = 0;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navega para a tela DentroCar quando o card é clicado
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DentroCar()),
        );
      },
      child: Container(
        margin: const EdgeInsets.all(16),
        child: Stack(
          children: [
            Container(
              height: 164,
              width: 438,
              margin: const EdgeInsets.only(bottom: 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    color: Colors.grey,
                    width: 100,
                    height: 150,
                    child: Image.asset("assets/imagens/${widget.capaLivro}"),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 20),
                          child: Text(
                            widget.titulo,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 8),
                          child: Text('Capítulos Totais: ${widget.capitulosTotais}'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 8),
                          child: Text('Capítulos Lidos: $capitulosLidos'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 25, top: 80),
                    width: 35,
                    height: 35,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 255, 58, 137),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        padding: EdgeInsets.zero,
                      ),
                      onPressed: capitulosLidos < widget.capitulosTotais
                          ? () {
                              setState(() {
                                capitulosLidos++;
                                if (capitulosLidos == widget.capitulosTotais) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'Você terminou a sua leitura de ${widget.capitulosTotais} capítulos!',
                                        style: const TextStyle(color: Colors.white),
                                      ),
                                      backgroundColor: Colors.green,
                                    ),
                                  );
                                }
                              });
                            }
                          : null,
                      child: const Icon(
                        Icons.add,
                        size: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}