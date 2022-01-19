import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex_flutter/constant/constant.dart';

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
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            Constants.title,
            style: Constants.titleTextStyle(),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Image.asset(
            logoImage,
            height: 100.h,
            fit: BoxFit.fitHeight,
          ),
        ),
      ],
    );
  }
}
