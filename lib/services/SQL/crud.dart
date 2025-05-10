// ignore_for_file: avoid_print

import 'package:getx_sql/model/ogreci_model.dart';
import 'package:getx_sql/services/SQL/database_helper.dart';
import 'package:sqflite/sqflite.dart';

class Crud {
  /// Tüm öğrenci kayıtlarını alır
  Future<List<OgreciModel>> getAllStudents() async {
    try {
      final Database db = await SqlDBHelper().database;
      final List<Map<String, dynamic>> rows = await db.query(
        Tables.tblKisi,
        orderBy: 'ad asc',
        
      );
      return rows.map((e) => OgreciModel.fromMap(e)).toList();
    } catch (e) {
      print('❌ getAllStudents hatası: $e');
      return [];
    }
  }
 

  /// Yeni öğrenci kaydı oluşturur
  Future<int?> insertStudent(OgreciModel student) async {
    try {
      final Database db = await SqlDBHelper().database;
      return await db.insert(Tables.tblKisi, student.toMap());
    } catch (e) {
      print('❌ insertStudent hatası: $e');
      return null;
    }
  }

  /// Öğrenci kaydını siler
  Future<int?> deleteStudent(int id) async {
    try {
      final Database db = await SqlDBHelper().database;
      return await db.delete(
        Tables.tblKisi,
        where: 'id = ?',
        whereArgs: [id],
      );
    } catch (e) {
      print('❌ deleteStudent hatası: $e');
      return null;
    }
  }

  /// Öğrenci kaydını günceller
  Future<int?> updateStudent(OgreciModel student) async {
    try {
      final Database db = await SqlDBHelper().database;
      return await db.update(
        Tables.tblKisi,
        student.toMap(),
        where: 'id = ?',
        whereArgs: [student.id],
      );
    } catch (e) {
      print('❌ updateStudent hatası: $e');
      return null;
    }
  }
}

/// Tablo adlarını yöneten sınıf
abstract class Tables {
  static const String tblKisi = 'students';
}