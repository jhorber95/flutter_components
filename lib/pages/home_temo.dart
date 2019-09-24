
import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget{
  final options = ['uno', 'dos'];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('components'),
      ),
      body: ListView(
        children: _crearItemsCorta()
      )
    );
  }

  List<Widget> _createList() {
    List<Widget> list = new List<Widget>();
    for(var op in options) {
      final temp = ListTile(
        title: Text(op),
      );

      list..add(temp)..add(Divider());
    }
    return list;
  }

  List<Widget> _crearItemsCorta() {
    return options.map((item){
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item + '!'),
            subtitle: Text('some'),
            leading: Icon(Icons.ac_unit),
            trailing: Icon(Icons.keyboard_arrow_right ),
            onTap: () {
              
            },
          ),
          Divider()
        ],
      );
    }).toList();

  }

  }