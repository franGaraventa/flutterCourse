import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class data {
  final String title;
  final IconData icon;

  const data({this.title, this.icon});
}

const List<data> listData = const <data>[
  const data(title: 'Home', icon: Icons.home),
  const data(title: 'Home', icon: Icons.home),
  const data(title: 'Home', icon: Icons.home),
  const data(title: 'Home', icon: Icons.home),
  const data(title: 'Home', icon: Icons.home),
  const data(title: 'Home', icon: Icons.home),
  const data(title: 'Home', icon: Icons.home),
  const data(title: 'Home', icon: Icons.home),
];

class GridViewCard extends StatelessWidget {
  final data element;

  GridViewCard({Key key, this.element}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.orange,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Icon(
                element.icon,
                size: 50,
              ),
            ),
            Text(
              element.title,
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}

class GridViewWidget extends StatelessWidget {
  final int crossAxisCount;

  GridViewWidget({Key key, this.crossAxisCount = 2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: crossAxisCount,
        children: List.generate(listData.length, (index) {
          return GridViewCard(element: listData[index]);
        }));
  }
}
