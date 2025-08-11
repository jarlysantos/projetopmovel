import 'package:sqflite/sqflite.dart';
import '../domain/propriedades.dart';
import 'db_helper.dart';


class Propiedades_dao{
  Future<List<Propriedade>> ListarPropriedades() async {
    List<Propriedade> listaPropriedades = [];
    Database db = await DBHelper().initDB();

    String sql = 'SELECT * FROM PROPRIEDADE;';
    var listResult = await db.rawQuery(sql);

    for (var json in listResult) {
      Propriedade propriedade = Propriedade.fromJson(json);
      listaPropriedades.add(propriedade);
    }
    return listaPropriedades;


  }
}
