import 'package:projarly2/db/db_helper.dart';
import 'package:projarly2/domain/oculos.dart';
import 'package:sqflite/sqflite.dart';

class OculosDao {
  Future<List<Oculos>> listarOculos() async {
    List<Oculos> listaOculos = [];
    Database db = await DBHelper().initDB();

    String sql = 'SELECT * FROM Armacao;';
    var listResult = await db.rawQuery(sql);

    for (var json in listResult) {
      Oculos oculos = Oculos.fromJson(json);
      listaOculos.add(oculos);
    }

    await Future.delayed(Duration(seconds: 3));

    return listaOculos;

  }


}
