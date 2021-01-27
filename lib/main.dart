import "package:flutter/material.dart";
import "login.dart";

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
    );
  }
}
