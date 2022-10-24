import 'package:flutter/material.dart';
import 'package:app_manage_company_data/common/configuration.dart' as cg;

class HomeOptionsCompaniesPage extends StatelessWidget {
  const HomeOptionsCompaniesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Card(
            child: ListTile(
              onTap: (){
                //Navigator.push(context, cg.createRoute('create-company'));
              },
              trailing: const Icon(Icons.arrow_forward_ios),
              leading: const Icon(Icons.person_outline_sharp),
              title: const Text('Crear nueva empresa'),
            ),
          ),
          Card(
            child: ListTile(
              onTap: (){

              },
              trailing: const Icon(Icons.arrow_forward_ios),
              leading: const Icon(Icons.person_outline_sharp),
              title: const Text('Actualizar empresa'),
            ),
          ),
          Card(
            child: ListTile(
              onTap: (){

              },
              trailing: const Icon(Icons.arrow_forward_ios),
              leading: const Icon(Icons.person_search_sharp),
              title: const Text('Buscar empresa'),
            ),
          ),
          Card(
            child: ListTile(
              onTap: (){

              },
              trailing: const Icon(Icons.arrow_forward_ios),
              leading: const Icon(Icons.person_off_rounded),
              title: const Text('Eliminar empresa'),
            ),
          ),
          Card(
            child: ListTile(
              onTap: (){

              },
              trailing: const Icon(Icons.arrow_forward_ios),
              leading: const Icon(Icons.play_for_work),
              title: const Text('Asociar una persona a una empresa'),
            ),
          )
        ],
      ),
    );
  }
}