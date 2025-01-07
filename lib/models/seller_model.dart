class SellerModel {
  final String id;
  final String name;

  SellerModel({required this.id, required this.name});

  factory SellerModel.fromJson(Map<String, dynamic> json, String id) {
    return SellerModel(
      id: id,
      name: json['name'] ?? '',
    );
  }
}
