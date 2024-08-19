import 'package:flutter/material.dart';

class CardLivro extends StatefulWidget {
  final String titulo;
  final int capitulosTotais;

  CardLivro(this.titulo, this.capitulosTotais, {super.key});

  @override
  _CardLivroState createState() => _CardLivroState();
}

class _CardLivroState extends State<CardLivro> {
  int capitulosLidos = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      child: Stack(
        children: [
          // Container com margem
          Container(
            height: 164,
            width: 438,
            margin: const EdgeInsets.only(bottom: 0), // Margem para separar dos próximos elementos
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
                // Container para a capa do livro
                Container(
                  margin: const EdgeInsets.all(10),
                  color: Colors.grey,
                  width: 100,
                  height: 150, // Ajuste a altura conforme necessário
                ),
                // Coluna com o texto
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 20),
                        child: Text(
                          widget.titulo, // Usa o título passado pelo construtor
                          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
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
                
                  margin: const EdgeInsets.only(right: 25, top:80),
                  width: 35, 
                  height: 35, 
                  child: ElevatedButton(
                    
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue, 
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      padding: EdgeInsets.zero, // Fazx o meu + ficar no centro do botão
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
                        : null, // Desativa o botão se os capítulos lidos forem iguais aos totais
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
    );
  }
}