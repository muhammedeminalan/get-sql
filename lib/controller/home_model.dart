import 'package:get/get.dart';
import 'package:getx_sql/model/ogreci_model.dart';
import '../services/SQL/crud.dart';

class HomeController extends GetxController {
  var ogrenciList = <OgreciModel>[].obs; // RxList olarak tanımlandı
  var isLoading = false.obs;

  final Crud _db = Crud();

  @override
  void onInit() {
    super.onInit();
    readOgrenciler();
  }

  /// Öğrencileri getirir
  Future<void> readOgrenciler() async {
    try {
      isLoading.value = true;
      final students = await _db.getAllStudents();
      ogrenciList.assignAll(
        students,
      ); // Listede değişiklik yaparken assignAll kullanıyoruz
    } catch (e) {
      Get.snackbar("Hata", "Veriler getirilemedi: $e");
    } finally {
      isLoading.value = false;
    }
  }

  /// Yeni öğrenci ekler
  Future<void> createdOgrenci(OgreciModel ogr) async {
    final id = await _db.insertStudent(ogr);
    if (id != null && id > 0) {
      ogr.id = id; // id'yi ekledikten sonra öğrenci modeline atıyoruz
      ogrenciList.add(ogr); // Listeyi güncelliyoruz
      Get.snackbar("Başarılı", "${ogr.ad} eklendi.");
    } else {
      Get.snackbar("Hata", "Kayıt eklenemedi.");
    }
  }

  /// Öğrenci siler
  Future<void> deleteOgrenci(OgreciModel ogr) async {
    final deleted = await _db.deleteStudent(ogr.id!);
    if (deleted != null && deleted > 0) {
      ogrenciList.removeWhere((e) => e.id == ogr.id);
      Get.snackbar("Silindi", "${ogr.ad} başarıyla silindi.");
    } else {
      Get.snackbar("Hata", "Silme işlemi başarısız.");
    }
  }

  /// Öğrenci güncellerx
  Future<void> updateOgrenci(OgreciModel ogr) async {
    int? sonuc = await _db.updateStudent(ogr);
    if (sonuc != -1) {
      ogrenciList.value = await _db.getAllStudents(); // listeyi yeniden çek
      Get.snackbar("Güncellendi", "Güncellenen kişi: ${ogr.ad}");
    } else {
      Get.snackbar("Hata", "Güncelleme başarısız!");
    }
  }
}
