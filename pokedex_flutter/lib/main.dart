import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex_flutter/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 808),
      builder: () => MaterialApp(
        builder: (context, Widget? widget) {
          ScreenUtil.setContext(context);
          return MediaQuery(data: new MediaQueryData(), child: widget!);
        },
        debugShowCheckedModeBanner: false,
        title: 'PokeDex',
        theme: ThemeData.dark().copyWith(
          textTheme: GoogleFonts.oxygenTextTheme(),
        ),
        home: HomePage(),
      ),
    );
  }
}
