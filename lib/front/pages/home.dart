import 'package:flutter/material.dart';
import 'package:timestone/back/base.dart';
import 'package:timestone/front/components/bar.dart';
import 'package:timestone/front/components/bottom_bar.dart';
import '../../entity/request/project.dart';
import '../../entity/model/project.dart';

class HomePage extends StatelessWidget {
  final NewBackEnd backEnd;
  HomePage({required this.backEnd});
  @override
  Widget build(BuildContext context) {
    backEnd.projectController.Get(ProjectRequest(Project(
      id: '1',
      name: 'name',
      description: 'description',
      tasks: [],
      createdAt: '2021-01-01T00:00:00Z',
      updatedAt: '2021-01-01T00:00:00Z',
      deletedAt: '2021-01-01T00:00:00Z',
    )));
    return Scaffold(
      appBar: Bar(context: context),
      bottomNavigationBar: BottomBar(context: context),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        width: 50.0,
        height: 25.0,
        child: FloatingActionButton(
          backgroundColor: Theme.of(context).primaryColor,
          onPressed: () {
            Navigator.pushNamed(context, '/project');
          },
          child: Icon(Icons.edit, color: Colors.white, size: 20.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
      ),
    );
  }
}
