class User {
  String name;
  String dateTime;
  String image;
  String title;
  String content;

  User({this.name, this.dateTime, this.image, this.title, this.content});

  User.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    dateTime = json['dateTime'];
    image = json['image'];
    title = json['title'];
    content = json['content'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['dateTime'] = this.dateTime;
    data['image'] = this.image;
    data['title'] = this.title;
    data['content'] = this.content;
    return data;
  }
}
