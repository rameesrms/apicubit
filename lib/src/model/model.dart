class Record {
  String? name;
  String? address;
  String? contact;
  String? photo;
  String? url;

  Record({this.name, this.address, this.contact, this.photo, this.url});

  Record.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    address = json['address'];
    contact = json['contact'];
    photo = json['photo'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['address'] = this.address;
    data['contact'] = this.contact;
    data['photo'] = this.photo;
    data['url'] = this.url;
    return data;
  }
}
