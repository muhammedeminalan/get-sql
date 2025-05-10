// ignore_for_file: depend_on_referenced_packages, avoid_print

import 'dart:io';
import 'package:flutter/services.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class SqlDBHelper {
  // Singleton yapı
  SqlDBHelper._internal();
  static final SqlDBHelper _instance = SqlDBHelper._internal();
  factory SqlDBHelper() => _instance;

  static const String _dbName = "ogrenciler.db";
  static const String _assetPath = "lib/database/$_dbName";

  static Database? _database;

  /// Veritabanı bağlantısını açar veya cache'ten getirir.
  Future<Database> get database async {
    _database ??= await _initDatabase();
    return _database!;
  }

  /// Veritabanı başlatma işlemi
  Future<Database> _initDatabase() async {
    try {
      final String dbPath = join(await getDatabasesPath(), _dbName);

      final bool exists = await databaseExists(dbPath);
      if (!exists) {
        await _copyDatabaseFromAssets(dbPath);
        print("✅ Veritabanı asset'ten kopyalandı");
      } else {
        print("✅ Veritabanı zaten mevcut");
      }

      return await openDatabase(dbPath);
    } catch (e) {
      print("❌ Veritabanı başlatma hatası: $e");
      rethrow;
    }
  }

  /// Asset klasöründen veritabanı dosyasını kopyalar
  Future<void> _copyDatabaseFromAssets(String targetPath) async {
    final ByteData data = await rootBundle.load(_assetPath);
    final List<int> bytes = data.buffer.asUint8List(
      data.offsetInBytes,
      data.lengthInBytes,
    );
    final File dbFile = File(targetPath);
    await dbFile.writeAsBytes(bytes, flush: true);
  }

  /// (Opsiyonel) Veritabanını kapatma
  Future<void> close() async {
    if (_database != null) {
      await _database!.close();
      _database = null;
      print("ℹ️ Veritabanı bağlantısı kapatıldı.");
    }
  }
}