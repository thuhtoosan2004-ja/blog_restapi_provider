class GetAllOnePost {
  int? id;
  String? title;
  String? body;
  String? photo;

  GetAllOnePost({this.id, this.title, this.body, this.photo});

  GetAllOnePost.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    body = json['body'];
    photo = json['photo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['body'] = this.body;
    data['photo'] = this.photo;
    return data;
  }
}
