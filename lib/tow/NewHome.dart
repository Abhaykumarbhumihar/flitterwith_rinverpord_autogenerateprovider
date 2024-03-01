import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'NewHome.g.dart';

class NewHomePage extends ConsumerWidget {
  const NewHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterNotiriferProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifier"),
      ),
      body: Center(
        child: Text("$counter"),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            onPressed: () {
              ref.read(counterNotiriferProvider.notifier).increment();
            },
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              ref.read(counterNotiriferProvider.notifier).decrement();
            },
            child: const Icon(Icons.abc_outlined),
          ),
        ],
      ),
    );
  }
}

@Riverpod(keepAlive: true)
class CounterNotirifer extends _$CounterNotirifer {
  @override
  int build() {
    return 0;
  }

  void increment() {
    state++;
  }

  void decrement() {
    state--;
  }
}
