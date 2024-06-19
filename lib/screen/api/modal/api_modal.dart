
class TodoModal {
  String? title;
  int? id, userId;
  bool? completed;

  TodoModal({this.completed, this.id, this.title, this.userId});

  factory TodoModal.fromJson(Map json) {
    return TodoModal(
      completed: json['completed'],
      id: json['id'],
      title: json['title'],
      userId: json['userId'],

    );
  }
}
