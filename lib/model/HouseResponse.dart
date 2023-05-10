/// id : "6457a37350aafa62489f8b34"
/// title : "منزل بإطلالة جميلة"
/// image1 : "localhost:8080/images/5d9a21b3-1e56-4846-82b0-4e50af3b59c2.jpg"
/// image2 : "localhost:8080/images/eee85d69-3df3-4b86-9c03-d6e0a3d553e6.jpg"
/// image3 : "localhost:8080/images/ea1834de-0133-4132-88a7-5d9bf5d3d777.jpg"
/// desc1 : "6 غرف وملحق"
/// desc2 : "المنزل مفروش"
/// desc3 : "4 حمامات"
/// desc4 : "صالتان وحوض سباحة"
/// price : "3000د.ل"
/// feature1 : "موقع رائع، الشارع ممهد"
/// feature2 : "بجواره سوق للمواد الغذائية"
/// feature3 : "مسموح بالحوانات الأليفة"
/// location : "مصراتة - ليبيا - شارع طرابلس"

class HouseResponse {
  HouseResponse({
      String? id, 
      String? title, 
      String? image1, 
      String? image2, 
      String? image3, 
      String? desc1, 
      String? desc2, 
      String? desc3, 
      String? desc4, 
      String? price, 
      String? feature1, 
      String? feature2, 
      String? feature3, 
      String? location,}){
    _id = id;
    _title = title;
    _image1 = image1;
    _image2 = image2;
    _image3 = image3;
    _desc1 = desc1;
    _desc2 = desc2;
    _desc3 = desc3;
    _desc4 = desc4;
    _price = price;
    _feature1 = feature1;
    _feature2 = feature2;
    _feature3 = feature3;
    _location = location;
}

  HouseResponse.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'];
    _image1 = json['image1'];
    _image2 = json['image2'];
    _image3 = json['image3'];
    _desc1 = json['desc1'];
    _desc2 = json['desc2'];
    _desc3 = json['desc3'];
    _desc4 = json['desc4'];
    _price = json['price'];
    _feature1 = json['feature1'];
    _feature2 = json['feature2'];
    _feature3 = json['feature3'];
    _location = json['location'];
  }
  String? _id;
  String? _title;
  String? _image1;
  String? _image2;
  String? _image3;
  String? _desc1;
  String? _desc2;
  String? _desc3;
  String? _desc4;
  String? _price;
  String? _feature1;
  String? _feature2;
  String? _feature3;
  String? _location;
HouseResponse copyWith({  String? id,
  String? title,
  String? image1,
  String? image2,
  String? image3,
  String? desc1,
  String? desc2,
  String? desc3,
  String? desc4,
  String? price,
  String? feature1,
  String? feature2,
  String? feature3,
  String? location,
}) => HouseResponse(  id: id ?? _id,
  title: title ?? _title,
  image1: image1 ?? _image1,
  image2: image2 ?? _image2,
  image3: image3 ?? _image3,
  desc1: desc1 ?? _desc1,
  desc2: desc2 ?? _desc2,
  desc3: desc3 ?? _desc3,
  desc4: desc4 ?? _desc4,
  price: price ?? _price,
  feature1: feature1 ?? _feature1,
  feature2: feature2 ?? _feature2,
  feature3: feature3 ?? _feature3,
  location: location ?? _location,
);
  String? get id => _id;
  String? get title => _title;
  String? get image1 => _image1;
  String? get image2 => _image2;
  String? get image3 => _image3;
  String? get desc1 => _desc1;
  String? get desc2 => _desc2;
  String? get desc3 => _desc3;
  String? get desc4 => _desc4;
  String? get price => _price;
  String? get feature1 => _feature1;
  String? get feature2 => _feature2;
  String? get feature3 => _feature3;
  String? get location => _location;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['title'] = _title;
    map['image1'] = _image1;
    map['image2'] = _image2;
    map['image3'] = _image3;
    map['desc1'] = _desc1;
    map['desc2'] = _desc2;
    map['desc3'] = _desc3;
    map['desc4'] = _desc4;
    map['price'] = _price;
    map['feature1'] = _feature1;
    map['feature2'] = _feature2;
    map['feature3'] = _feature3;
    map['location'] = _location;
    return map;
  }

}