
import 'package:api_calling/screen/api/provider/api_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo Screen'),
      ),
      body: Consumer<TODOProvider>(
        builder: (context, todoProvider, child) {
          return ListView(
            children: List.generate(
              todoProvider.todoList.length,
                  (index) => ListTile(
                leading: Column(
                  children: [
                    Text(
                      '${todoProvider.todoList[index].id}',
                    ),
                    Text(
                      '${todoProvider.todoList[index].userId}',
                    ),
                  ],
                ),
                title: Text(
                  overflow: TextOverflow.ellipsis,
                  todoProvider.todoList[index].title!,
                ),
                subtitle: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Text(
                    //   overflow: TextOverflow.ellipsis,
                    //   todoProvider.todoList[index].completed! as String,
                    // ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
