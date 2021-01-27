import 'package:flutter/material.dart';
import "processo.dart";

class Local extends StatefulWidget {
  @override
  _LocalState createState() => _LocalState();
}
  
class _LocalState extends State<Local>{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Local', 
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
                    buttonColor: Colors.blue,
                    height: 50,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => Processo()
                          )
                        );
                      },
                      child: Text('Navio Escola',
                      style: TextStyle(fontSize: 26))

                    ),
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