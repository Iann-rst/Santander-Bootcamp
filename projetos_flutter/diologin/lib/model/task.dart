import 'package:flutter/material.dart';

class Task {
  final String _id = UniqueKey().toString();
  String _description = "";
  bool _completed = false;

  // constructor
  Task(this._description, this._completed);

  String getId() {
    return _id;
  }

  String getDescription() {
    return _description;
  }

  bool getCompleted() {
    return _completed;
  }

  void setDescription(String description) {
    _description = description;
  }

  void setCompleted(bool completed) {
    _completed = completed;
  }
}
