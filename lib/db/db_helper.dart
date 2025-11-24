import 'dart:async';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

 class DBHelper{

  Future<Database> initDB() async {

    String path = await getDatabasesPath();


    String dbName= 'airbnb.db';

    String dbPath = join(path, dbName);
    print(dbPath);
    var db = openDatabase(dbPath, version: 2, onCreate: onCreate);
    return db;

  }

  Future<void> onCreate(Database db, int version) async {
    String sql = '''
    CREATE TABLE Propriedade (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      valor REAL NOT NULL,
      nome TEXT,
      parcelamento TEXT,
      avaliacao DOUBLE,
      urlImage TEXT
    );
  ''';
    await db.execute(sql);

    sql = '''
      INSERT INTO Propriedade (valor, nome, parcelamento, avaliacao, urlImage)
      VALUES (199.99, 'Par de lente anti-blue + antirreflexo', '3x sem juros', 5.2, 'assets/imagens/foto1.jpg');
    ''';
    await db.execute(sql);

    sql = '''
      INSERT INTO Propriedade (valor, nome, parcelamento, avaliacao, urlImage)
      VALUES (400, 'Par de lente - fotossensível + antirreflexo com grau', '4x sem juro', 5.2, 'assets/imagens/foto2.jpg');
    ''';
    await db.execute(sql);

    sql = '''
      INSERT INTO Propriedade (valor, nome, parcelamento, avaliacao, urlImage)
      VALUES (199.00, 'Par de lente-fina + solar', '2x sem juros', 5.2, 'assets/imagens/foto3.jpg');
    ''';
    await db.execute(sql);

    sql = '''
      INSERT INTO Propriedade (valor, nome, parcelamento, avaliacao, urlImage)
      VALUES (299.60, 'Par de lente-Solar-marrom', '3x sem juros', 4.9, 'assets/imagens/foto4.webp');
    ''';
    await db.execute(sql);

    sql = '''
      INSERT INTO Propriedade (valor, nome, parcelamento, avaliacao, urlImage)
      VALUES (399.90, 'Par de lentes-Premium - com grau', '3x sem juros', 4.6, 'assets/imagens/foto5.png');
    ''';
    await db.execute(sql);


  }

}









