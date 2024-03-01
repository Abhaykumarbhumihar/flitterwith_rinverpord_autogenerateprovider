import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpord_notifier/filterusingnotifier/player_notifer.dart';

class FilterWithNotifierProvider extends ConsumerWidget {
  const FilterWithNotifierProvider({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchProvider = ref.watch(playerNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Filter User"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            const SizedBox(height: 20),
            TextField(
              onChanged: (value) =>
                  ref.read(playerNotifierProvider.notifier).filerPlayer(value),
              decoration: InputDecoration(
                  label: Text("Search"), suffixIcon: Icon(Icons.search)),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: searchProvider.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          title: Text("${searchProvider[index]['name']}"),
                          subtitle: Text("${searchProvider[index]['country']}"),
                        ),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
