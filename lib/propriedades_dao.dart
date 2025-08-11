import 'package:sqflite/sqlite_api.dart';

class PropriedadesDao {
  Future<List<propriedade>> listarPropriedades() async {
    List<PropriedadesDao> listaPropriedades = [];
    Database db = await DBHelper().initDB();

    String sql = 'SELECT * FROM PROPRIEDADE;'
    var listResult = await db.rawQuery(sql);

    for (var json in listResult) {
      Propriedades propriedade = Propriedade.fromJson(json);
      listaPropriedades.add(propriedade);
    }

    return listaPropriedades;

    // Propriedade(
    //   valor: '2,500',
    //   avaliacao: 5.0,
    //   datas: '12-31 Dec',
    //   local: result[0]['local'],
    //   tipoDeHost: 'Professional Host',
    //   urlImage:
    //   'https://news.airbnb.com/wp-content/uploads/sites/4/2019/06/PJM020719Q202_Luxe_WanakaNZ_LivingRoom_0264-LightOn_R1.jpg?fit=3200%2C2133',
    // )
  }
}

class propriedade {

}