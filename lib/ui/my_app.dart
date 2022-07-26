import 'package:flutter/material.dart';
import 'package:poke_filter_go/ui/screen/home/home_page.dart';

import 'theme/colors.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PokeFilterGO',
      theme: ThemeData(
          primarySwatch: primaryMaterialColor, brightness: Brightness.dark),
      home: const HomePage(),
    );
  }
}
