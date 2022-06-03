class MyModel {
  int id;
  String title;
  String body;

  MyModel({required this.id, required this.title, required this.body});

  factory MyModel.fromJson(Map<String, dynamic> map) {
    return MyModel(
      id: map['id'] as int,
      title: map['title'] as String,
      body: map['body'] as String,
    );
  }
}
