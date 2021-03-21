import 'package:flutter/material.dart';
import 'package:primeiro_app/uteis.dart';
import 'resources/arrays.dart';
import 'resources/strings.dart';

class Estocagem extends StatefulWidget {
  @override
  _EstocagemState createState() => _EstocagemState();
}

class _EstocagemState extends State<Estocagem> {
   
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            Strings.title_storage,
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context, false),
          ),
        ),

        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: <Widget>[

              Checagem(
                title: Strings.title_list1,
                parameters: [
                  Strings.title_listcheck1_1, Avaliado(
                    titleRated: Strings.title_listcheck1_1, 
                    titles: Arrays.titles_list1,
                  ),

                  Strings.title_listcheck1_2, Avaliado(
                    titleRated: Strings.title_listcheck1_2,
                    titles: Arrays.titles_list2,
                  ),

                  Strings.title_listcheck1_3, Avaliado(
                    titleRated: Strings.title_listcheck1_3,
                    titles: Arrays.titles_list3,
                  ),

                  Strings.title_listcheck1_4, Avaliado( 
                    titleRated: Strings.title_listcheck1_4,
                    titles: Arrays.titles_list4,
                  ),

                  Strings.title_listcheck1_5, Avaliado(
                    titleRated: Strings.title_listcheck1_5,                  
                    titles: Arrays.titles_list5,
                  ),
                ],
              ),
                                  
              Checagem(
                title: Strings.title_list2,
                parameters: ['Pisos', Avaliado()],
              ),

              Checagem(
                title: Strings.title_list3,
                parameters: ['Pisos', Avaliado()],
              ),

              Checagem(
                title: Strings.title_list4,
                parameters: ['Pisos', Avaliado()],
              )

            ],
          ),
        ),
      ),
    );
  }
}
