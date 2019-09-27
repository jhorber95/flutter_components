import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  List<int> _list = new List();
  int _lastItem = 0;

  ScrollController _scrollController = new ScrollController();

  @override
  void initState() {
    super.initState();
    _addNewImages();

    _scrollController.addListener(() {
      if(_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
        _addNewImages();
      }
    });
  }

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
        controller: _scrollController,
        itemCount: _list.length,
        itemBuilder: (BuildContext context, int index) {
          final image = _list[index];
          return FadeInImage(
            image: NetworkImage('https://picsum.photos/500/300/?image=$image'),
            placeholder: AssetImage('assets/jar-loading.gif'),
          );
        });
  }

  void _addNewImages() {
    for (int i = 0; i < 10; i++) {
      _lastItem++;
      _list.add(_lastItem);
      setState(() {});
    }
  }
}
