// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:todo_app_flutter/constants/colors.dart';
import 'package:flutter_quill/flutter_quill.dart' hide Text;

class QuillTest extends StatefulWidget {
  const QuillTest({super.key});

  @override
  State<QuillTest> createState() => _QuillTestState();
}

class _QuillTestState extends State<QuillTest> {
  final QuillController _controller = QuillController.basic();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: AppBar(
        title: const Text('Quill Test'),
      ),
      body: Column(
        children: [
          QuillToolbar.basic(controller: _controller),
          Expanded(
            child: Container(
              child: QuillEditor.basic(
                controller: _controller,
                readOnly: false, // true for view only mode
              ),
            ),
          )
        ],
      ),
    );
  }
}
