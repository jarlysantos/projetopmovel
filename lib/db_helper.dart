import 'dart:async';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';


class DBHelper {
  Future<Database> initDB() async {
    String path = await getDatabasesPath();
    String dbName = 'airbnb.db';

    String dbPath = join(path, dbName);
    print(dbPath);
    var db = await openDatabase(dbPath, version: 1, onCreate: onCreate);
    return db;
  }



  Future<void> onCreate(Database db, int version) async {
    String sql = '''CREATE TABLE Propriedade (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT,
    preço REAL,
    parcelamento REAL,
     urlImage TEXT,
    );''';

    await db.execute(sql);

    sql =
    "INSERT INTO Propriedade (nome, preço, valor da parcela, urlImage) VALUES ('franela de microfibra', '25,90', '2x sem juros', 'https://images.tcdn.com.br/img/img_prod/424358/flanela_de_microfibra_40x60cm_350gsm_vintex_50420511_1_bdd0a2d179d1cc0ad60e706ea0ad99f9_20240410095138.jpg');";
    await db.execute(sql);

    sql =
    "INSERT INTO Propriedade (nome, preço, valor da parcela,urlImage) VALUES ('Spray limpa-lentes', 40,00, '2x sem juros', 'https://acdn-us.mitiendanube.com/stores/001/855/372/products/foss-801-986ebab3433aabbb3f16427268022044-1024-1024.jpg');";
    await db.execute(sql);

    sql =
    "INSERT INTO Propriedade (nome, preço, valor da parcela, urlImage) VALUES ('Correntes ou cordinhas fashion', 250,00, '6x sem juros ','https://images.tcdn.com.br/img/img_prod/961443/noticia_13568440046272f072ac53a.JPG');";
    await db.execute(sql);

    sql =
    "INSERT INTO Propriedade (nome, preço, valor da parcela, urlImage) VALUES ('Correntes ou cordinhas fashion', 299,60, '4x sem juros','https://img.joomcdn.net/c07dc1ba1409c7d004288482755e6d55b18d6076_original.jpeg');";
    await db.execute(sql);

    sql =
    "INSERT INTO Propriedade (nome, preço, valor da parcela, urlImage) VALUES ('Correntes ou cordinhas fashion', 149,90, '3x sem juros','https://media.eotica.com.br/magpleasure/mpblog/upload/5/e/5e5dcdc23ff79766bf406a800c32e66e.jpg');";
    await db.execute(sql);




  }
}
