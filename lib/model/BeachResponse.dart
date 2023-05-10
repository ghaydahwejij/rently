/// id : "6457b9857d870062f81e9a8b"
/// title : "شاليه فيراندا"
/// image1 : "localhost:8080/images/0d4fa2db-1425-48b6-9f8d-5ae3a246bc0a.jpg"
/// image2 : "localhost:8080/images/4b6a4ff8-3eb2-4fd5-8db8-c5e13963fe97.jpg"
/// image3 : "localhost:8080/images/173a9b40-de0c-4779-a719-c83b5dd5ab23.jpg"
/// desc1 : "يوجد بها حوض سباحة داخلي"
/// desc2 : "3 غرف "
/// desc3 : "يوجد بها شرفة خارجية"
/// desc4 : "3 حمامات"
/// price : "1500 د.ل"
/// sea : "تبعد 1 كم عن البحر"

class BeachResponse {
  BeachResponse({
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
      String? sea,}){
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
    _sea = sea;
}

  BeachResponse.fromJson(dynamic json) {
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
    _sea = json['sea'];
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
  String? _sea;
BeachResponse copyWith({  String? id,
  String? title,
  String? image1,
  String? image2,
  String? image3,
  String? desc1,
  String? desc2,
  String? desc3,
  String? desc4,
  String? price,
  String? sea,
}) => BeachResponse(  id: id ?? _id,
  title: title ?? _title,
  image1: image1 ?? _image1,
  image2: image2 ?? _image2,
  image3: image3 ?? _image3,
  desc1: desc1 ?? _desc1,
  desc2: desc2 ?? _desc2,
  desc3: desc3 ?? _desc3,
  desc4: desc4 ?? _desc4,
  price: price ?? _price,
  sea: sea ?? _sea,
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
  String? get sea => _sea;

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
    map['sea'] = _sea;
    return map;
  }

}