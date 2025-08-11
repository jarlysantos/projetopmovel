import 'dart:async';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DBHelper{

  Future<Database> initDB() async {
<<<<<<< HEAD
   String path=  await getDatabasesPath;
=======
   String path=  await getDatabasesPath();
>>>>>>> 57b8c092ccedd6306b635507d12dae76418f1665
   String dbName= 'airbnb.db';

   String dbPath = join(path, dbName);
   print(dbPath);
   var db = openDatabase(dbPath, version: 2, onCreate: onCreate);
   return db;

  }

  Future<void> onCreate(Database db, int version) async {
    String sql = '''CREATE TABLE Propriedade (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    valor REAL NOT NULL,
    nome TEXT,
    parcelamento TEXT,
    avaliacao REAL,
    urlImage TEXT
    );''';
     await db.execute(sql);

     sql=
         "INSERT INTO Propriedade (valor, nome , parcelamentos ,avaliacao, urlImage) VALUES (199.99,'Par de lente anti-blue + antirreflexo', '3x sem juros', 5.2, 'https://acdn-us.mitiendanube.com/stores/001/118/587/products/c3511773-3978-46c0-8dcf-1ddf29d738e641-8e6d88a2ae8804719715900976899620-1024-1024.jpg');";
    await db.execute(sql);
    sql =
       "INSERT INTO Propriedade (valor,nome ,parcelamento, avaliacao, urlImage) VALUES (400, 'Par de lente - fotossensível + antirreflexo com grau', '4x sem juro', 5.2,'https://cf.bstatic.com/xdata/images/hotel/max1024x768/667104136.jpg?k=0232c39cb40c3b9c7c3b60b2c5c9fa1d0c7c25b4e20e3354ae71df528b0a13a9&o=&hp=1');";
    await db.execute(sql);

    sql =
       "INSERT INTO Propriedade (valor, nome, parcelamento ,avaliacao, urlImage) VALUES (399.00, 4.75, '05-15 Sep', 'Lisbon, Portugal', 'Professional Host', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/82990832.jpg?k=83c1b95f88126bb3f1d822c19654c1ff5e1b037c4d25042dbd82112e25331afb&o=&hp=1');";
    await db.execute(sql);

    sql =
       "INSERT INTO Propriedade (valor, nome , parcelamento ,avaliacao, urlImage) VALUES (600, 4.75, '05-15 Sep', 'Lisbon, Portugal', 'Professional Host', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/82990832.jpg?k=83c1b95f88126bb3f1d822c19654c1ff5e1b037c4d25042dbd82112e25331afb&o=&hp=1');";
    await db.execute(sql);
    sql =
      "INSERT INTO Propriedade (valor, nome,parcelamento ,avaliacao, urlImage) VALUES (980.000, 4.75, '05-15 Sep', 'Lisbon, Portugal', 'Professional Host', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/82990832.jpg?k=83c1b95f88126bb3f1d822c19654c1ff5e1b037c4d25042dbd82112e25331afb&o=&hp=1');";
    await db.execute(sql);


  }
}


<<<<<<< HEAD
=======
  }
}
>>>>>>> 57b8c092ccedd6306b635507d12dae76418f1665
