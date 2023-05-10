/// id : "64577ad69aedb0152e61e9b4"
/// title : "شقة متوسطة في عمارة الدينار"
/// image1 : "/images/a5b04063-1c7b-46a1-b2e2-786843aa91af.jpg"
/// image2 : "/images/5376c1a4-6b4c-4b74-a6b2-34553c3dc025.jpg"
/// image3 : "/images/46f36c31-141c-4d8a-8c91-23673fbbb91d.jpg"
/// desc1 : "الدور السادس"
/// desc2 : "غير مفروش"
/// desc3 : "بدون مصعد"
/// desc4 : "4 مكيفات"
/// time : "مدة غير محدودة"
/// price : "3000"
/// details : "3 غرف، صالة، حمام و شُرفة مُطلّة على البحر"
/// location : "طرابلس - الظهرة"

class FlatResponse {
  FlatResponse({
      String? id, 
      String? title, 
      String? image1, 
      String? image2, 
      String? image3, 
      String? desc1, 
      String? desc2, 
      String? desc3, 
      String? desc4, 
      String? time, 
      String? price, 
      String? details, 
      String? location,})
  {
    _id = id;
    _title = title;
    _image1 = image1;
    _image2 = image2;
    _image3 = image3;
    _desc1 = desc1;
    _desc2 = desc2;
    _desc3 = desc3;
    _desc4 = desc4;
    _time = time;
    _price = price;
    _details = details;
    _location = location;
}

  FlatResponse.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'];
    _image1 = json['image1'];
    _image2 = json['image2'];
    _image3 = json['image3'];
    _desc1 = json['desc1'];
    _desc2 = json['desc2'];
    _desc3 = json['desc3'];
    _desc4 = json['desc4'];
    _time = json['time'];
    _price = json['price'];
    _details = json['details'];
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
  String? _time;
  String? _price;
  String? _details;
  String? _location;
FlatResponse copyWith({  String? id,
  String? title,
  String? image1,
  String? image2,
  String? image3,
  String? desc1,
  String? desc2,
  String? desc3,
  String? desc4,
  String? time,
  String? price,
  String? details,
  String? location,
}) => FlatResponse(  id: id ?? _id,
  title: title ?? _title,
  image1: image1 ?? _image1,
  image2: image2 ?? _image2,
  image3: image3 ?? _image3,
  desc1: desc1 ?? _desc1,
  desc2: desc2 ?? _desc2,
  desc3: desc3 ?? _desc3,
  desc4: desc4 ?? _desc4,
  time: time ?? _time,
  price: price ?? _price,
  details: details ?? _details,
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
  String? get time => _time;
  String? get price => _price;
  String? get details => _details;
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
    map['time'] = _time;
    map['price'] = _price;
    map['details'] = _details;
    map['location'] = _location;
    return map;
  }

}