// ignore_for_file: public_member_api_docs, sort_constructors_first
class OgreciModel {
  int? id;
  String ad;
  String soyad;
  String bolum;
  int sinif;
  OgreciModel({
    this.id,
    required this.ad,
    required this.soyad,
    required this.bolum,
    required this.sinif,
  });

  factory OgreciModel.fromMap(Map<String, dynamic> map) {
    return OgreciModel(
      id: map['id'] ?? 0,
      ad: map['ad'],
      soyad: map['soyad'],
      bolum: map['bolum'],
      sinif: map['sinif'],
    );
  }
  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['ad'] = ad;
    data['soyad'] = soyad;
    data['bolum'] = bolum;
    data['sinif'] = sinif;
    return data;
  }
}
