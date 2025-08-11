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
    preco REAL NOT NULL,
    modelo TEXT,
    cor TEXT,
    urlImage TEXT
    );''';

    await db.execute(sql);

    sql =
    "INSERT INTO Propriedade (preco, modelo, cor, urlImage) VALUES (300, 'Gatinho', 'Rosa Claro','https://i.pinimg.com/736x/33/3a/15/333a15fecadc047609e0e33c9a7d8edc.jpg');";
    await db.execute(sql);

    sql =
    "INSERT INTO Propriedade (preco, modelo, cor, urlImage) VALUES (350, 'Arco-íris', 'Rosa Claro','https://i.pinimg.com/736x/1a/f2/d6/1af2d6c2825354f6770ba249ba2bcdcb.jpg');";
    await db.execute(sql);

    sql =
    "INSERT INTO Propriedade (preco, modelo, cor, urlImage) VALUES (295, 'Florzinha', 'Marrom Claro','https://i.pinimg.com/736x/78/7e/7a/787e7a2b8dd5219ab507dc141145b5b7.jpg');";

    sql =
    "INSERT INTO Propriedade (preco, modelo, cor, urlImage) VALUES (400, 'Laço', 'Rosa Claro','https://i.pinimg.com/736x/8d/91/ab/8d91ab939d607e226464272225d71a82.jpg');";
    await db.execute(sql);

  }

}
