import 'package:flutter/material.dart';
import 'package:widgets/providers/menu_provider.dart';
import 'package:widgets/utils/icono_string_util.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

 Widget _lista() {
   return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot){
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> list = new List<Widget>();

    data.forEach((i) {
      final temp = new ListTile(
        title: Text(i['texto']),
        leading: getIcon(i['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue,),
        onTap: (){
          Navigator.pushNamed(context, i['ruta']);
        },
      );

      list..add(temp)..add(Divider());
    });
    return list;
  }
  
}