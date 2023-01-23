import 'package:flutter/material.dart';

const int itemCount = 7;

class FeedPage extends StatelessWidget {
  const FeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: itemCount,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(
                'Item ${(index + 1)}',
                style: const TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
              leading: const Icon(
                Icons.person,
                color: Colors.black,
              ),
              trailing: const Icon(
                Icons.select_all,
                color: Colors.black,
              ),
              onTap: () {
                debugPrint('');
              },
            );
          }),
    );
  }
}
