class HallResponse {
  HallResponse({
      this.id, 
      this.title, 
      this.image1, 
      this.image2, 
      this.image3, 
      this.desc1, 
      this.desc2, 
      this.desc3, 
      this.desc4, 
      this.price, 
      this.location,});

  HallResponse.fromJson(dynamic json) {
    id = json['id'];
    title = json['title'];
    image1 = json['image1'];
    image2 = json['image2'];
    image3 = json['image3'];
    desc1 = json['desc1'];
    desc2 = json['desc2'];
    desc3 = json['desc3'];
    desc4 = json['desc4'];
    price = json['price'];
    location = json['location'];
  }
  String? id;
  String? title;
  String? image1;
  String? image2;
  String? image3;
  String? desc1;
  String? desc2;
  String? desc3;
  String? desc4;
  String? price;
  String? location;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['title'] = title;
    map['image1'] = image1;
    map['image2'] = image2;
    map['image3'] = image3;
    map['desc1'] = desc1;
    map['desc2'] = desc2;
    map['desc3'] = desc3;
    map['desc4'] = desc4;
    map['price'] = price;
    map['location'] = location;
    return map;
  }

}