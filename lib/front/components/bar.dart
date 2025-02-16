//外部からインポートされることを想定しているappbarのコンポーネント
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Bar extends StatelessWidget implements PreferredSizeWidget {
  final BuildContext context;
  Bar({required this.context});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Timestone'),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            context.go('/projects');
          },
          child: Text(
            'Projects',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
