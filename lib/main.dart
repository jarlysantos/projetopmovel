import 'package:flutter/material.dart';
import 'package:projarly2/ProjetoOtica.dart';
import 'package:projarly2/provider/profile_provider.dart';
import 'package:projarly2/telaInicial.dart';
import 'package:projarly2/login.dart';
import 'package:projarly2/register_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProfileProvider()),
      ],
      child: MaterialApp(
        home: Login(),
      ),
    ),
  );
}
