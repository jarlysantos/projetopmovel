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
      VALUES (199.99, 'Par de lente anti-blue + antirreflexo', '3x sem juros', 5.2, 'https://acdn-us.mitiendanube.com/stores/001/118/587/products/c3511773-3978-46c0-8dcf-1ddf29d738e641-8e6d88a2ae8804719715900976899620-1024-1024.jpg');
    ''';
    await db.execute(sql);

    sql = '''
      INSERT INTO Propriedade (valor, nome, parcelamento, avaliacao, urlImage)
      VALUES (400, 'Par de lente - fotossensível + antirreflexo com grau', '4x sem juro', 5.2, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/667104136.jpg?k=0232c39cb40c3b9c7c3b60b2c5c9fa1d0c7c25b4e20e3354ae71df528b0a13a9&o=&hp=1');
    ''';
    await db.execute(sql);

    sql = '''
      INSERT INTO Propriedade (valor, nome, parcelamento, avaliacao, urlImage)
      VALUES (199.00, 'Par de lente-fina + solar', '2x sem juros', 5.2, 'https://acdn-us.mitiendanube.com/stores/925/127/products/528c6e21-ed03-4359-868e-00f6268dda0c_nube-21ccfeaa1d536b162b16018312383074-1024-1024.jpg');
    ''';
    await db.execute(sql);

    sql = '''
      INSERT INTO Propriedade (valor, nome, parcelamento, avaliacao, urlImage)
      VALUES (299.60, 'Par de lente-Solar-marrom', '3x sem juros', 4.9, 'https://acdn-us.mitiendanube.com/stores/925/127/products/a4f89835-1dce-47fd-9a5d-c815d007bfda_nube-b7e655ab33002f3f7616018314083548-480-0.webp');
    ''';
    await db.execute(sql);

    sql = '''
      INSERT INTO Propriedade (valor, nome, parcelamento, avaliacao, urlImage)
      VALUES (399.90, 'Par de lentes-Premium - com grau', '3x sem juros', 4.6, 'https://acdn-us.mitiendanube.com/stores/925/127/products/hd0a267ad7a71463ea9b0d38548d4c5eeq21-5af749c14ec2351aa516824526844931-1024-1024.png');
    ''';
    await db.execute(sql);


  }
}


