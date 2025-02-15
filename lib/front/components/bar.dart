//外部からインポートされることを想定しているappbarのコンポーネント
import 'package:flutter/material.dart';

class Bar extends StatelessWidget {
  const Bar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('timestone'),
    );
  }
}
