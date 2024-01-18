import 'package:flutter/material.dart';

class CardList extends StatelessWidget {
  final List<String> items = [
    'Pekerjaan',
    'Pekerjaan',
    'Pekerjaan',
    'Item 4',
    'Item 5',
    'Item 6',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 5, // Set the elevation for the card
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: ListTile(
            title: Text(items[index]),
            subtitle: Text('Subtitle'),
            leading: Icon(Icons.check_circle),
            onTap: () {
              // Handle item tap
              print('Tapped on item ${items[index]}');
            },
          ),
        );
      },
    );
  }
}