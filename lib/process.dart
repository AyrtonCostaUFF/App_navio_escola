import 'package:flutter/material.dart';
import 'storage.dart';
import 'uteis.dart';
import 'resources/strings.dart';


class Process extends StatefulWidget {
  @override
  _ProcessState createState() => _ProcessState();
}

class _ProcessState extends State<Process> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(
          title: Text(
            Strings.title_process,
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context, false),
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

                  Botao( 
                    titleButton: Strings.button_storage,
                    screen: Estocagem(),
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
                            child: Text(Strings.button_production,
                                style: TextStyle(fontSize: 24))),
                  ),

                  SizedBox(height: 30),

                  ButtonTheme(
                          height: 50,
                          minWidth: 170,
                          child: RaisedButton(
                            onPressed: () {},
                            child: Text(Strings.button_distribution,
                                style: TextStyle(fontSize: 24)),
                          )),
                    ],
                  ),
                ),
              ),
            )
));
  }
}
