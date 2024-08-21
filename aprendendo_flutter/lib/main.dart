import 'package:flutter/material.dart';
import 'card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(primarySwatch: Colors.yellow),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Livros',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 255, 58, 137),
        ),
        body: ListView(children: [
          CardLivro(
              'A Hipótese do Amor',
              'livro1.jpeg',
              40,
              5,
              "De Ali Hazelwood",
              "Quando um namoro de mentira entre cientistas encontra a irresistível força da atração, todas as teorias cuidadosamente calculadas sobre o amor são postas à prova. Olive Smith, aluna do doutorado em Biologia da Universidade Stanford, acredita na ciência – não em algo incontrolável como o amor. Depois de sair algumas vezes com Jeremy, ela percebe que sua melhor amiga gosta dele e decide juntá-los. Para mostrar que está feliz com essa escolha, Olive precisa ser convincente: afinal, cientistas exigem provas.",
              "Porque estou começando a me perguntar se é isto que significa amar: concordar em destroçar a si mesmo em mil pedaços para que a outra pessoa permaneça inteira.",
              "A vida acadêmica tira muita coisa de você e te dá muito pouco em troca. É difícil se manter firme se você não tiver uma boa motivação pra isso."),
          CardLivro(
              'Não é Amor',
              'livro2.jpeg',
              24,
              4,
              "Ali Hazelwood",
              "A vida de Rue Siebert não é perfeita, mas ela tem alguns poucos amigos leais e uma carreira de sucesso como engenheira de biotecnologia na Kline, uma das mais promissoras startups no campo da ciência dos alimentos.",
              "A velha Ali voltou,porque no último livro faltou um pouco da essência dela “A noiva” me decepcionou um pouco,mas esse eu gostei,mesmo não sendo um dos meus preferidos.A leitura é bem fluida,dinâmica e divertida como nos outros livros da autora.",
              "Esse livro da Ali volta ao universo mais científico e aborda também temas sensíveis relacionados com pobreza e negligência, não descreve de forma abrupta, a autora conseguiu trabalhar bem os temas."),
          CardLivro(
              'O efeito Graham',
              'livro3.jpeg',
              18,
              2,
              " Elle Kennedy",
              "Será que uma brilhante jogadora de hóquei consegue sair da sombra do pai famoso, ganhar uma medalha e ser escalada para a seleção, mantendo o foco e sem perder seu coração no processo? Acompanhe a história viciante e cheia de surpresas de Gigi, filha do casal protagonista de O acordo.",
              "Sempre. Você cai, eu te ajudo a levantar. Sempre",
              "Meu Deus, como eu tava com saudades desses personagens e desse ambiente da Briar! Foi mais do que maravilhoso revisitar esse universo, Off Campus é uma das minhas séries favoritas da vida."),
          CardLivro(
              'Em rota de colisão',
              'livro4.jpeg',
              5,
              1,
              "Bal Khabra",
              "Summer Preston está dividida entre realizar o sonho de sua vida e se tornar uma psicóloga esportiva ou ficar o mais longe possível de um campo de hóquei, afinal, ela tem um bom motivo para odiar o esporte.",
              "Sum e Aiden são maravilhosos! O mocinho cadelinha se rendendo e fazendo TUDO pela mocinha é tudo pra mim. Amei o desenvolvimento do casal, o amadurecimento do relacionamento deles foi lindo também, a interação de Sum com os amigos de Aiden foi super divertida! Ansiosa para ver se teremos livro de outro casal desse universo.",
              " Referente a historia eu fiquei apaixonada, o casal é muito fofo e a historia de amor deles é daquelas que nos prende e enquanto não terminamos o livro não dá pra parar de ler. Acho que gostei mais ainda por ele me lembrar muito dos livros do universo Briar, por serem do mesmo esporte e em ambiente universitário."),
              CardLivro(
              'A Hipótese do Amor',
              'livro1.jpeg',
              40,
              5,
              "De Ali Hazelwood",
              "Quando um namoro de mentira entre cientistas encontra a irresistível força da atração, todas as teorias cuidadosamente calculadas sobre o amor são postas à prova. Olive Smith, aluna do doutorado em Biologia da Universidade Stanford, acredita na ciência – não em algo incontrolável como o amor. Depois de sair algumas vezes com Jeremy, ela percebe que sua melhor amiga gosta dele e decide juntá-los. Para mostrar que está feliz com essa escolha, Olive precisa ser convincente: afinal, cientistas exigem provas.",
              "Porque estou começando a me perguntar se é isto que significa amar: concordar em destroçar a si mesmo em mil pedaços para que a outra pessoa permaneça inteira.",
              "A vida acadêmica tira muita coisa de você e te dá muito pouco em troca. É difícil se manter firme se você não tiver uma boa motivação pra isso."),
          CardLivro(
              'Não é Amor',
              'livro2.jpeg',
              24,
              4,
              "Ali Hazelwood",
              "A vida de Rue Siebert não é perfeita, mas ela tem alguns poucos amigos leais e uma carreira de sucesso como engenheira de biotecnologia na Kline, uma das mais promissoras startups no campo da ciência dos alimentos.",
              "A velha Ali voltou,porque no último livro faltou um pouco da essência dela “A noiva” me decepcionou um pouco,mas esse eu gostei,mesmo não sendo um dos meus preferidos.A leitura é bem fluida,dinâmica e divertida como nos outros livros da autora.",
              "Esse livro da Ali volta ao universo mais científico e aborda também temas sensíveis relacionados com pobreza e negligência, não descreve de forma abrupta, a autora conseguiu trabalhar bem os temas."),
          CardLivro(
              'O efeito Graham',
              'livro3.jpeg',
              18,
              2,
              " Elle Kennedy",
              "Será que uma brilhante jogadora de hóquei consegue sair da sombra do pai famoso, ganhar uma medalha e ser escalada para a seleção, mantendo o foco e sem perder seu coração no processo? Acompanhe a história viciante e cheia de surpresas de Gigi, filha do casal protagonista de O acordo.",
              "Sempre. Você cai, eu te ajudo a levantar. Sempre",
              "Meu Deus, como eu tava com saudades desses personagens e desse ambiente da Briar! Foi mais do que maravilhoso revisitar esse universo, Off Campus é uma das minhas séries favoritas da vida."),
          CardLivro(
              'Em rota de colisão',
              'livro4.jpeg',
              5,
              1,
              "Bal Khabra",
              "Summer Preston está dividida entre realizar o sonho de sua vida e se tornar uma psicóloga esportiva ou ficar o mais longe possível de um campo de hóquei, afinal, ela tem um bom motivo para odiar o esporte.",
              "Sum e Aiden são maravilhosos! O mocinho cadelinha se rendendo e fazendo TUDO pela mocinha é tudo pra mim. Amei o desenvolvimento do casal, o amadurecimento do relacionamento deles foi lindo também, a interação de Sum com os amigos de Aiden foi super divertida! Ansiosa para ver se teremos livro de outro casal desse universo.",
              " Referente a historia eu fiquei apaixonada, o casal é muito fofo e a historia de amor deles é daquelas que nos prende e enquanto não terminamos o livro não dá pra parar de ler. Acho que gostei mais ainda por ele me lembrar muito dos livros do universo Briar, por serem do mesmo esporte e em ambiente universitário."),
        ]),
      ),
    );
  }
}
