import 'package:flutter/material.dart';

class SoccerKnowAppBar extends StatelessWidget {
  const SoccerKnowAppBar({super.key, required this.title, this.leading});

  final String? title;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: title != null ? Text(title!) : const Text('Wrong'),
    );
  }
}
