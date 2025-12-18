import 'package:flutter/material.dart';
import '../models/course.dart';

class CourseListScreen extends StatelessWidget {
  const CourseListScreen({super.key});

  final List<Course> courses = const [
    Course(id: '1', title: 'Flutter Basics', description: 'Learn Flutter from scratch', instructor: 'John Doe'),
    Course(id: '2', title: 'Dart Programming', description: 'Master Dart language', instructor: 'Jane Smith'),
    Course(id: '3', title: 'State Management', description: 'Using Provider for state', instructor: 'Bob Johnson'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Courses'),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              Navigator.pushNamed(context, '/profile');
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: courses.length,
        itemBuilder: (context, index) {
          final course = courses[index];
          return ListTile(
            title: Text(course.title),
            subtitle: Text('${course.description}\nInstructor: ${course.instructor}'),
            isThreeLine: true,
          );
        },
      ),
    );
  }
}