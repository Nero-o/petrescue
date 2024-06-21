import 'dart:convert';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

class LocalDatabase {
  static Future<String> _getFilePath(String filename) async {
    final directory = await getApplicationDocumentsDirectory();
    return '${directory.path}/$filename.json';
  }

  static Future<List<Map<String, dynamic>>> loadData(String filename) async {
    try {
      final path = await _getFilePath(filename);
      final file = File(path);
      if (!file.existsSync()) {
        return [];
      }
      final data = await file.readAsString();
      return List<Map<String, dynamic>>.from(json.decode(data));
    } catch (e) {
      print("Erro ao carregar os dados: $e");
      return [];
    }
  }

  static Future<void> saveData(String filename, List<Map<String, dynamic>> data) async {
    try {
      final path = await _getFilePath(filename);
      final file = File(path);
      await file.writeAsString(json.encode(data));
    } catch (e) {
      print("Erro ao salvar os dados: $e");
    }
  }
}
