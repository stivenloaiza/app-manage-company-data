import 'package:flutter/material.dart';

class HomeOptionsPersonsPage extends StatelessWidget {
  const HomeOptionsPersonsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Card(
            child: ListTile(
              onTap: (){

              },
              trailing: const Icon(Icons.arrow_forward_ios),
              leading: const Icon(Icons.person_add),
              title: const Text('Crear nueva persona'),
            ),
          ),
          Card(
            child: ListTile(
              onTap: (){

              },
              trailing: const Icon(Icons.arrow_forward_ios),
              leading: const Icon(Icons.person_outline_sharp),
              title: const Text('Actualizar persona'),
            ),
          ),
          Card(
            child: ListTile(
              onTap: (){

              },
              trailing: const Icon(Icons.arrow_forward_ios),
              leading: const Icon(Icons.person_search_sharp),
              title: const Text('Buscar persona'),
            ),
          ),
          Card(
            child: ListTile(
              onTap: (){

              },
              trailing: const Icon(Icons.arrow_forward_ios),
              leading: const Icon(Icons.person_off_rounded),
              title: const Text('Eliminar persona'),
            ),
          )
        ],
      ),
    );
  }
}
