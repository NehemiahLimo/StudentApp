import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:student/Models/api_services.dart';
import 'package:student/Models/student.dart';

class Students extends StatefulWidget {
  Students({Key key}):super(key:key);
  @override
  _StudentsState createState() => _StudentsState();
}

class _StudentsState extends State<Students> {
  List<Student> students;

  getStudent(){
    APIService.fetchStudent().then((response){
      Iterable list = json.decode(response.body);
      List<Student> studentList = List<Student>();
      studentList = list.map((model)=>Student.fromObject(model)).toList();

      setState(() {
        students = studentList;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    getStudent();
    return Scaffold(
      appBar: AppBar(
        title: Text('Student App'),


      ),
      body: students==null? Center(child: Text('Empty')):
      ListView.builder(itemCount:students.length,
        itemBuilder:(context, index){
        return Card(
          color: Colors.white,
            elevation: 2.0,
          child: ListTile(
            title: ListTile(
              title: Text(students[index].firstName),
              onTap: null,
            ),
          ),
        );
      },),

    );
  }
}
