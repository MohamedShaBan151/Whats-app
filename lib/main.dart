

import 'package:appp2/first_home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      // debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   appBarTheme: AppBarTheme(iconTheme: IconThemeData(color: Colors.black)),
      //   primaryColor: const Color.fromARGB(255, 16, 223, 12),
      //   colorScheme: ColorScheme.fromSeed(
      //     seedColor: const Color.fromARGB(255, 9, 172, 105),
      //   ),
      //   scaffoldBackgroundColor: const Color.fromARGB(255, 6, 229, 102),
      // ),
      // darkTheme: ThemeData(
      //   primaryColor: const Color.fromARGB(255, 5, 66, 6),
      //   colorScheme: ColorScheme.fromSeed(
      //     seedColor: const Color.fromARGB(255, 16, 199, 101),
      //   ),
      // ),
      // themeMode: ThemeMode.light,

      //home: HomeScreen(),
      home: WhatsAppUiDemo(),
    ),
  );
}