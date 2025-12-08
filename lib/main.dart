import 'package:flutter/material.dart';

import 'package:projarly2/pages/home_page.dart';
import 'package:projarly2/pages/listar.dart';
import 'package:projarly2/pages/listar_oculos_page.dart';
import 'package:projarly2/pages/novaTela.dart';
import 'package:projarly2/provider/profile_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProfileProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ListaOculos(),
      ),
    ),
  );
}
