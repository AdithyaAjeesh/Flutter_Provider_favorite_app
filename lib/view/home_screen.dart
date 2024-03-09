import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_favorite_app/controller/favorite_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<int> selectedItem = [];
    final favoriteItemProvider = Provider.of<FavoriteItemProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite App'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return Consumer(builder: (context, value, child) {
                  return ListTile(
                    onTap: () {
                      favoriteItemProvider.addItem(index);
                    },
                    title: Text('Item: $index'),
                    trailing: Icon(
                      favoriteItemProvider.selectedItem.contains(index)
                          ? Icons.favorite
                          : Icons.favorite_outline,
                    ),
                  );
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
