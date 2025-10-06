import 'package:projarly2/acessorios.dart';
import 'package:projarly2/domain/acessorio.dart';

import '../db/db_helper.dart';
import 'package:sqflite/sqlite_api.dart';

import 'db_helper.dart';

class AcessorioDao {
  Future<List<Acessorio>> listarAcessorios() async {
    Database db = await DBHelper().initDB();
    String sql = 'SELECT * FROM ACESSORIO;';
    var listResult = await db.rawQuery(sql);

    List<Acessorio> listaAcessorios = [];

    for (var json in listResult) {
      Acessorio acessorio = Acessorio.fromJson(json);
      listaAcessorios.add(acessorio);
    }
    return listaAcessorios;
  }
}