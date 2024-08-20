import 'package:flutter/material.dart';
import 'dentroCard.dart';

class CardLivro extends StatefulWidget {
  final String titulo;
  final String capaLivro;
  final int capitulosTotais;
  final int estrela;

  CardLivro(this.titulo, this.capaLivro, this.capitulosTotais,this.estrela, {super.key});

  @override
  _CardLivroState createState() => _CardLivroState();
}

class _CardLivroState extends State<CardLivro> {
  //está aqui pq eu não quero perder este valor se estivesse no build eu o poderia perder
  int capitulosLidos = 0;

  @override
  Widget build(BuildContext context) {
    // Tudo o que está dentro dela será reeescrito , redesenhado
    return InkWell(
      onTap: () {
        // Navega para a tela DentroCar quando o card é clicado
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DentroCar(widget.titulo)),
        );
      },
      child: Container(
        margin: const EdgeInsets.all(16),
        child: Stack(
          children: [
            Container(
              height: 170,
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
                          child: Text(
                              'Capítulos Totais: ${widget.capitulosTotais}'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 8),
                          child: Text('Capítulos Lidos: $capitulosLidos'),
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 20,top: 10),
                        child: Row(
                          children: [
                            //Vamos usar condição ternaria, pois o Dart não aceita um if tradicional ali,  : se não
                            //? se ela for maior que 1 
                            Icon(Icons.star, size: 15,color: (widget.estrela >=1) ?  Color.fromARGB(230, 18, 185, 52) :  Color.fromARGB(239, 132, 252, 154),),
                          
                            //if(widget.estrela >=1{
                            //   Color.fromARGB(230, 18, 185, 52)} else{  Color.fromARGB(239, 132, 252, 154)} )
                            // Color.fromARGB(230, 18, 185, 52) ,),
                            Icon(Icons.star, size: 15,color: (widget.estrela >=2) ? Color.fromARGB(230, 18, 185, 52) :  Color.fromARGB(239, 132, 252, 154),),
                            Icon(Icons.star, size: 15,color: (widget.estrela >=3) ?  Color.fromARGB(230, 18, 185, 52) :  Color.fromARGB(239, 132, 252, 154),),
                            Icon(Icons.star, size: 15,color: (widget.estrela >=4) ?  Color.fromARGB(230, 18, 185, 52) :  Color.fromARGB(239, 132, 252, 154),),
                            Icon(Icons.star, size: 15,color: (widget.estrela >=5) ?  Color.fromARGB(230, 18, 185, 52) :  Color.fromARGB(239, 132, 252, 154),),
                            
                          ],
                        ),),
                        // Nossa famosa barra de pesquisas!
                        Container(
                          width: 160,
                          height: 6,
                          margin: EdgeInsets.only(left: 20, top: 15),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: LinearProgressIndicator(
                                value: capitulosLidos.toDouble() /
                                    widget.capitulosTotais,
                                color: Color.fromARGB(230, 18, 237, 62),
                                backgroundColor:
                                    Color.fromARGB(239, 132, 252, 154)),
                          ),
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
                        backgroundColor:
                            const Color.fromARGB(255, 255, 58, 137),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        padding: EdgeInsets.zero,
                      ),
                      onPressed: capitulosLidos < widget.capitulosTotais
                          ? () {
                              setState(() {
                                // Está função diz para o meu widget quem é que está mudando
                                capitulosLidos++;
                                if (capitulosLidos == widget.capitulosTotais) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'Você terminou a sua leitura de ${widget.capitulosTotais} capítulos!',
                                        style: const TextStyle(
                                            color: Colors.white),
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
