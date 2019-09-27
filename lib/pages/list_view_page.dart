import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  List<int> _list = [1, 2, 3, 4, 5];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('List View page  '),
        ),
        body: _createList());
  }

  Widget _createList() {
    return ListView.builder(
        itemCount: _list.length,
        itemBuilder: (BuildContext context, int index) {
          final image = _list[index];
          return FadeInImage(
            image: NetworkImage('https://picsum.photos/500/300/?image=$image'),
            placeholder: AssetImage('assets/jar-loading.gif'),
          );
        }
        );
  }
}
