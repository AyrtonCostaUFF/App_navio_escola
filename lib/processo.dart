import 'package:flutter/material.dart';
import 'estocagem.dart';

class Processo extends StatefulWidget {
  @override
  _ProcessoState createState() => _ProcessoState();
}
  
class _ProcessoState extends State<Processo>{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Processo', 
          ), 
      
        ),
        body: Align(
          child: SizedBox(
          width: double.infinity,
          height: double.infinity,

            child: Padding(
              padding: const EdgeInsets.all(8.0),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  ButtonTheme(
                    height: 50,
                    minWidth: 170,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => Estocagem()
                          )
                        );
                      },
                      child: Text('Estocagem',
                      style: TextStyle(fontSize: 24))
                    ),
                  ),
                  
                  SizedBox(height: 30),

                  ButtonTheme(
                    height: 50,
                    minWidth: 170,
                    child: RaisedButton( 
                      onPressed: () {
                      //  Navigator.of(context).push(
                      //   MaterialPageRoute(
                        //   builder: (context) => Local()
                        // )
                      // );
                      },
                      child: Text('Produção',
                        style: TextStyle(fontSize: 24))
                    ),
                  ),

                  SizedBox(height: 30),

                  ButtonTheme(
                    height: 50,
                    minWidth: 170,
                    child: RaisedButton(onPressed: (){},
                      child: Text('Distribuição',
                        style: TextStyle(fontSize: 24)),
                    
                    )
                  ), 
                ],
              ),
            ),
          ),
        )
      )
    );
  }
}