import 'package:flutter/material.dart';
import 'package:ui_practice/models/student.dart';
import 'package:ui_practice/services/student_operations.dart';

class EditStudent extends StatelessWidget {
  final Student student;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController branchController = TextEditingController();

  EditStudent({this.student});

  @override
  Widget build(BuildContext context) {
    nameController.text=student.name;
    branchController.text=student.branch;
    return Scaffold(
        appBar: AppBar(title: Text('Edit Student')),
        body: ListView(
          padding: EdgeInsets.all(16),
          children: <Widget>[
            TextField(
              controller: nameController,
              decoration: InputDecoration(hintText: 'Name'),
            ),
            SizedBox(height: 16),
            TextField(
              controller: branchController,
              decoration: InputDecoration(hintText: 'Branch'),
            ),
            SizedBox(height: 16),
            RaisedButton(
              child: Text('Edit Student'),
              onPressed: () async{
                String name = nameController.text;
                String branch = branchController.text;

                Student s = Student(id:student.id,name: name, branch: branch);

                await StudentOperations.instance.editStudent(s);
                Navigator.pop(context);               
              },
            )
          ],
        ));
  }
}
