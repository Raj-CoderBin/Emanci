import 'package:emancy_app/database/db.dart';
import 'package:emancy_app/modelos/posicao.dart';
import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart';

class ContaRepository extends ChangeNotifier {
  late Database db;
  final List<Posicao> _carteira = [];
  double _saldo = 0;

  get saldo => _saldo;
  List<Posicao> get carteira => _carteira;

  ContaRepository() {
    _initiRepository();
  }

  _initiRepository() async {
    await _getSaldo();
  }

  _getSaldo() async {
    db = await Db.instance.database;
    List conta = await db.query('conta', limit: 1);
    _saldo = conta.first['saldo'];
    notifyListeners();
  }

  setSaldo(double valor) async {
    db = await Db.instance.database;
    db.update('conta', {'saldo': valor});
    _saldo = valor;
    notifyListeners();
  }
}
