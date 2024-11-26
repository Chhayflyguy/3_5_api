import 'package:api/Model/model.dart';
import 'package:flutter/material.dart';


class Fetch extends StatelessWidget {
  
  final List<Model> model = [
    Model(id: 1, username: 'test1', name: 'Test 1', email: 'test1@example.com'),
    Model(id: 2, username: 'test2', name: 'Test 2', email: 'test2@example.com'),
  ];

   Fetch({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fetch Data'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          Model item = model[index];
          return ListTile(
            leading: Container(
              width: 50,
              child: Text('ID: ${item.id}'),
            ),
            title: Text('Name: ${item.name}'),
            subtitle: Text('Email: ${item.email}'),
          );
        },
      ),
    );
  }
}