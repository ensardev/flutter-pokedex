import 'package:flutter/material.dart';

class AppTitle extends StatefulWidget {
  AppTitle({Key? key}) : super(key: key);

  @override
  _AppTitleState createState() => _AppTitleState();
}

class _AppTitleState extends State<AppTitle> {
  String logoImage = 'images/pokeball.png';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Align(
          alignment: Alignment.topLeft,
          child: Text("PokeDex"),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Image.asset(
            logoImage,
            height: 100,
            fit: BoxFit.fitHeight,
          ),
        ),
      ],
    );
  }
}
