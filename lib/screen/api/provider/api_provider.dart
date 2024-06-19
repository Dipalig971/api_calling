import 'dart:convert';
import 'package:flutter/material.dart';
import '../helper/api.dart';
import '../modal/api_modal.dart';

class TODOProvider extends ChangeNotifier{
  List<TodoModal> todoList = [];

  List<TodoModal> get todo => todoList;

  TODOProvider() {
    getData();
  }

  Future<void> getData() async {

    String json = await ApiService()
        .callApi('https://jsonplaceholder.typicode.com/todos');
    List data = await jsonDecode(json);
    todoList = data.map((e) => TodoModal.fromJson(e)).toList();
    notifyListeners();
  }
}