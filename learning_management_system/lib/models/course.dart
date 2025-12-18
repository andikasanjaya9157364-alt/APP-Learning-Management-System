class Course {
  final String id;
  final String title;
  final String description;
  final String instructor;

  Course({required this.id, required this.title, required this.description, required this.instructor});

  factory Course.fromJson(Map<String, dynamic> json) {
    return Course(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      instructor: json['instructor'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'instructor': instructor,
    };
  }
}