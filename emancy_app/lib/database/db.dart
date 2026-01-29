import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class Db {
  Db._();

  static final Db instance = Db._();

  static Database? _database;

  get database async {
    if (_database != null) return _database;
    return await _initDatabase();
  }

  _initDatabase() async {
    return await openDatabase(
      join(await getDatabasesPath(), 'dados.db'),
      version: 1,
      onCreate: _onCreate,
    );
  }

  _onCreate(db, versao) async {
    await db.execute(_conta);
    await db.execute(_carteira);
    await db.execute(_historico);
    await db.insert('conta', {'saldo': 0});
  }

  String get _conta => '''
CREATE TABLE conta (
id INTEGER PRIMARY KEY AUTOINCREMENT,
saldo REAL
)
''';

  String get _carteira => '''
CREATE TABLE carteira (
banco TEXT PRIMARY KEY,
moeda TEXT
quantidade TEXT
)
''';
  String get _historico => '''
CREATE TABLE historico (
id INTEGER PRIMARY KEY AUTOINCREMENT,
data_operacao INT,
tipo_operacao TEXT,
moeda TEXT,
banco TEXT,
valor REAL,
quantidade TEXT
)
''';
}
