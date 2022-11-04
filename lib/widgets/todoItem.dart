import 'package:flutter/material.dart';
import 'package:todo_app_flutter/constants/colors.dart';
import 'package:todo_app_flutter/model/todo.dart';
import 'dart:developer' as developer;

class TodoItem extends StatelessWidget {
  final ToDo todoData;
  final onToDoChanged;
  final onDeleteItem;

  // const TodoItem({super.key, required this.todo});
  const TodoItem(
      {Key? key,
      required this.todoData,
      required this.onToDoChanged,
      required this.onDeleteItem})
      : super(key: key);

  void main() {
    developer.log('log me', error: {todoData});
  }

  @override
  Widget build(BuildContext context) {
    // return const Text("Todo List");
    return Container(
      // distance between all todo
      margin: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          // print("Clicked on ToDo Item!");
          onToDoChanged(todoData);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        // full inner list content padding
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 5,
        ),
        tileColor: Colors.white,
        // Icon Check
        // dynamic check
        leading: Icon(
          todoData.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: tdBlue,
        ),
        title: Text(
          // "Check Mail",
          // Dtynamic
          todoData.todoText!,
          style: TextStyle(
            fontSize: 16,
            color: tdBlack,
            // dynamic lineThrough
            decoration: todoData.isDone ? TextDecoration.lineThrough : null,
          ),
        ),
        // Delete Icon
        trailing: Container(
          padding: const EdgeInsets.all(0),
          margin: const EdgeInsets.symmetric(
            vertical: 12,
          ),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: tdRed,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            color: Colors.white,
            iconSize: 18,
            icon: const Icon(
              Icons.delete,
            ),
            onPressed: () {
              // print("Clicked on Delete Icon!->" '${todoData.id}');
              onDeleteItem(todoData.id);
            },
          ),
        ),
      ),
    );
  }
}
