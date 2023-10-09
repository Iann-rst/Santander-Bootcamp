import 'package:flutter/material.dart';

class Task {
  final String _id = UniqueKey().toString();
  String _description = "";
  bool _completed = false;

  // constructor
  Task(this._description, this._completed);

  String get id => _id;

  String get description => _description;

  bool get completed => _completed;

  void setDescription(String description) {
    _description = description;
  }

  void setCompleted(bool completed) {
    _completed = completed;
  }
}
