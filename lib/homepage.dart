import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'homepage.g.dart';

@Riverpod(keepAlive: true)
String name(NameRef ref) {
  return "Abhaykumar";
}

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = ref.watch(nameProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifier"),
      ),
      body: Center(
        child: Text("$name"),
      ),
    );
  }
}
