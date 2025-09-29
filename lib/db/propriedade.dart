import 'package:projarly2/model/user.dart';
import 'package:sqflite/sqflite.dart';
import 'package:projarly2/db_helper.dart';

class Propriedade {
  Future<List<User>> listarPropriedades() async {

    List<User> listaUser = [];
    Database db = await DBHelper().initDB();

    String sql = 'SELECT * FROM PROPRIEDADE;';
    var listResult = await db.rawQuery(sql);

    for (var json in listResult){
      User propriedade = User.fromJson(json);
      listaUser.add(propriedade);
    }
    await Future.delayed(Duration(seconds: 3));
    return listaUser;
  }
}