import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  Future<Database> initDB() async {
    String path = await getDatabasesPath();
    String dbName = 'oculos.db';

    String dbPath = join(path, dbName);
    print(dbPath);
    var db = await openDatabase(dbPath, version: 1, onCreate: onCreate);
    return db;
  }

  Future<void> onCreate(Database db, int version) async {
    String sql = '''
    CREATE TABLE Armacao (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      nomeArmacao TEXT,
      cor TEXT,
      preco REAL,
      url TEXT NOT NULL
    );
    ''';

    await db.execute(sql);

    await db.execute('''
      INSERT INTO Armacao (nomeArmacao, cor, preco, url)
      VALUES ('Safira', 'Preto', 400, 'https://cdn.awsli.com.br/600x700/637/637407/produto/152388234/5871bfde79.jpg');
    ''');

    await db.execute('''
      INSERT INTO Armacao (nomeArmacao, cor, preco, url)
      VALUES ('Liz', 'Transparente', 400, 'https://dcdn-us.mitiendanube.com/stores/002/122/492/products/armacao_chamber_gatinho_chique_nude_5-6b69e4277716bc8b8a16581690322343-1024-1024.jpeg');
    ''');

    await db.execute('''
      INSERT INTO Armacao (nomeArmacao, cor, preco, url)
      VALUES ('Babi', 'Onça', 400, 'https://officina7.fbitsstatic.net/img/p/oculos-de-grau-prada-caramel-tortoise-pr-18wv-07r101-54-88965/279262.jpg?w=1200&h=960&v=no-change&qs=ignore');
    ''');

    await db.execute('''
      INSERT INTO Armacao (nomeArmacao, cor, preco, url)
      VALUES ('Jade', 'Rose', 400, 'https://images.tcdn.com.br/img/img_prod/877056/oculos_de_grau_original_cagliari_em_acetato_feminino_7866_15749_variacao_20259_2_009e3c0e973858a60a252a25d3ad4e4a.jpg');
    ''');
  }
}
