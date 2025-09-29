import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  Future<Database> initDB() async {
    String path = await getDatabasesPath();
    String dbName = 'loola.db';

    String dbPath = join(path, dbName);  // projeto9123.asdasdjasd/db/loola.db
    print(dbPath);
    var db = await openDatabase(dbPath, version: 1, onCreate: onCreate);
    return db;
  }

  Future<void> onCreate(Database db, int version) async {
    String sql  = "CREATE TABLE USER (username varchar(100) PRIMARY KEY, password varchar(100))";
    await db.execute(sql);

    sql = "INSERT INTO USER (username, password) VALUES ('joao@gmail.com', '123456')";
    await db.execute(sql);
  }
}