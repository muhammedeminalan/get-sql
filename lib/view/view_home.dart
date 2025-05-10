import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sql/controller/home_model.dart';
import 'package:getx_sql/core/widget/costum_button.dart';
import 'package:getx_sql/core/widget/costum_list_title.dart';
import 'package:getx_sql/model/ogreci_model.dart';
import '../core/extension/extension.dart';

class ViewHome extends GetView<HomeController> {
 const ViewHome({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(child: Obx(() => _buildStudentList(context))),

            Padding(
              padding: context.top8,
              child: _buildAddStudentButton(context),
            ),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      title:  Text(
        'Students',
        style: TextStyle(
          fontSize: context.fsdevBaslik,
          fontWeight: context.fwdahaKalin,
        ),
      ),
    );
  }

  Widget _buildStudentList(BuildContext context) {
    if (controller.ogrenciList.isEmpty) {
      return Center(
        child: Text(
          'Lütfen Veri Ekleyiniz',
          style: TextStyle(
            fontSize: context.fsbuyukBaslik,
            color: context.white,
            fontWeight: context.fwdahaKalin,
          ),
        ),
      );
    }

    return ListView.separated(
      padding: const EdgeInsets.all(12),
      itemCount: controller.ogrenciList.length,
      separatorBuilder: (_, __) => const SizedBox(height: 10),
      itemBuilder: (context, index) {
        final ogr = controller.ogrenciList[index];
        return CostumListTitle(
          leadingText: '${ogr.sinif}',
          titleText: '${ogr.ad} ${ogr.soyad}',
          subtitleText: 'Bölüm: ${ogr.bolum} ',
          edit: () => _showStudentDialog(context, ogr),
          delete: () => controller.deleteOgrenci(ogr),
        );
      },
    );
  }

  Widget _buildAddStudentButton(BuildContext context) {
    return CostumButton(
      text: "Öğrenci Ekle",
      onPressed: () => _showStudentDialog(Get.context!),
      bgColor: context.white,
      textColor: context.black,
      textWeight: context.fwkalin,
      textSize: 25,
      genislik: 250,
    );
  }

  void _showStudentDialog(BuildContext context, [OgreciModel? ogrenci]) {
    final isEdit = ogrenci != null;
    final adController = TextEditingController(text: ogrenci?.ad ?? '');
    final soyadController = TextEditingController(text: ogrenci?.soyad ?? '');
    final bolumController = TextEditingController(text: ogrenci?.bolum ?? '');
    final sinifController = TextEditingController(
      text: ogrenci?.sinif.toString() ?? '',
    );

    Get.defaultDialog(
      barrierDismissible: false,
      backgroundColor: context.darkGray,
      title: isEdit ? "Öğrenci Güncelle" : "Yeni Öğrenci Ekle",
      content: Column(
        children: [
          _buildTextField(adController, 'Ad'),
          context.h20,
          _buildTextField(soyadController, 'Soyad'),
          context.h20,
          _buildTextField(bolumController, 'Bölüm'),
          context.h20,
          _buildTextField(
            sinifController,
            'Sınıf (sayı)',
            keyboardType: TextInputType.number,
          ),
        ],
      ),
      actions: [
        Row(
          children: [
            CostumButton(
              text: isEdit ? "Güncelle" : "Ekle",
              onPressed: () {
                if (_validateFields([
                  adController,
                  soyadController,
                  bolumController,
                  sinifController,
                ])) {
                  final model = OgreciModel(
                    id: ogrenci?.id,
                    ad: adController.text,
                    soyad: soyadController.text,
                    bolum: bolumController.text,
                    sinif: int.tryParse(sinifController.text) ?? 1,
                  );
                  isEdit
                      ? controller.updateOgrenci(model)
                      : controller.createdOgrenci(model);
                  Get.back();
                } else {
                  Get.snackbar("Uyarı", "Lütfen tüm alanları doldurun");
                }
              },
              bgColor: context.green,
              textColor: Colors.black,
            ),
            CostumButton(
              text: "İptal",
              bgColor: context.red,
              onPressed: () => Get.back(),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildTextField(
    TextEditingController controller,
    String label, {
    TextInputType keyboardType = TextInputType.text,
  }) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(),
      ),
      keyboardType: keyboardType,
    );
  }

  bool _validateFields(List<TextEditingController> fields) {
    return fields.every((ctrl) => ctrl.text.trim().isNotEmpty);
  }
}
