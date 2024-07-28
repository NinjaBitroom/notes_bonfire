import 'package:flutter/material.dart';

class BasePage extends StatelessWidget {
  final String title;
  final Widget child;
  final Widget? floatingActionButton;

  const BasePage(
      {super.key,
      required this.title,
      required this.child,
      this.floatingActionButton});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: child,
      floatingActionButton: floatingActionButton,
    );
  }
}
