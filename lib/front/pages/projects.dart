import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:timestone/front/components/bar.dart';
import 'package:timestone/front/components/bottom_bar.dart';

class ProjectsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Bar(context: context),
      body: CardList(),
      bottomNavigationBar: BottomBar(context: context),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        width: 50.0,
        height: 30.0,
        child: FloatingActionButton(
          backgroundColor: Theme.of(context).primaryColor,
          onPressed: () {
            Navigator.pushNamed(context, '/project');
          },
          child: Icon(Icons.edit, color: Colors.white, size: 30.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
      ),
    );
  }
}

class CardList extends StatelessWidget {
  final List<String> items = List.generate(10, (index) => 'Project $index');

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Card(
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          elevation: 4,
          child: ListTile(
            title: Text(items[index]),
            leading: Icon(Icons.label),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('${items[index]}')),
              );
            },
          ),
        );
      },
    );
  }
}
