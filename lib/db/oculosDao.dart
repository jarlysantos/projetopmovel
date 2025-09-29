
import 'package:sqflite/sqflite.dart';
import '../domain/oculos.dart';
import 'db_helper.dart';


class Propiedades_dao{
  Future<List<Oculos>> ListarPropriedades() async {
    List<Oculos> listaOculos = [];
    Database db = await DBHelper().initDB();

    String sql = 'SELECT * FROM PROPRIEDADE;';
    var listResult = await db.rawQuery(sql);

    for (var json in listResult) {
      Oculos varOculos = Oculos.fromJson(json);
      listaOculos.add(varOculos);
    }
    return listaOculos;
  }


}
