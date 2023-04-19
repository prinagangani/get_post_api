//
//
// import 'dart:convert';
//
// List<ProductModal> productModalFromJson(String str) => List<ProductModal>.from(json.decode(str).map((x) => ProductModal.fromJson(x)));
//
// String productModalToJson(List<ProductModal> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
//
// class ProductModal {
//   ProductModal({
//     required this.id,
//     required this.productName,
//     required this.productPrice,
//     required this.productOffer,
//     required this.productCategory,
//     required this.productImage,
//     required this.productDesc,
//     required this.productRate,
//   });
//
//   String id;
//   String productName;
//   String productPrice;
//   String productOffer;
//   String productCategory;
//   ProductImage productImage;
//   String productDesc;
//   String productRate;
//
//   factory ProductModal.fromJson(Map<String, dynamic> json) => ProductModal(
//     id: json["id"],
//     productName: json["product_name"],
//     productPrice: json["product_price"],
//     productOffer: json["product_offer"],
//     productCategory: json["product_category"],
//     productImage: productImageValues.map[json["product_image"]]!,
//     productDesc: json["product_desc"],
//     productRate: json["product_rate"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "product_name": productName,
//     "product_price": productPrice,
//     "product_offer": productOffer,
//     "product_category": productCategory,
//     "product_image": productImageValues.reverse[productImage],
//     "product_desc": productDesc,
//     "product_rate": productRate,
//   };
// }
//
// enum ProductImage { GOOGLE_COM }
//
// final productImageValues = EnumValues({
//   "google.com": ProductImage.GOOGLE_COM
// });
//
// class EnumValues<T> {
//   Map<String, T> map;
//   late Map<T, String> reverseMap;
//
//   EnumValues(this.map);
//
//   Map<T, String> get reverse {
//     reverseMap = map.map((k, v) => MapEntry(v, k));
//     return reverseMap;
//   }
// }
//
//
class ProductModal {
  String? id, p_name, p_price, p_offer, p_category, p_image, p_desc, p_rate;

  ProductModal({
    this.id,
    this.p_name,
    this.p_price,
    this.p_offer,
    this.p_category,
    this.p_image,
    this.p_desc,
    this.p_rate,
  });

  ProductModal ProductFromJson(Map m1) {
    id = m1['id'];
    p_name = m1['product_name'];
    p_price = m1['product_price'];
    p_offer = m1['product_offer'];
    p_category = m1['product_category'];
    p_image = m1['product_image'];
    p_desc = m1['product_desc'];
    p_rate = m1['product_rate'];

    ProductModal p1 = ProductModal(
      id: id,
      p_category: p_category,
      p_desc: p_desc,
      p_image: p_image,
      p_name: p_name,
      p_offer: p_offer,
      p_price: p_offer,
      p_rate: p_rate,
    );

    return p1;
  }
}