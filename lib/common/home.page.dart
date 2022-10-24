import 'package:app_manage_company_data/companies/pages/home-options-companies.page.dart';
import 'package:app_manage_company_data/persons/pages/home-options-persons.page.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:app_manage_company_data/common/configuration.dart' as cg;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final pageController = PageController(
      initialPage: 0
  );

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: cg.gradientPpal()
          ),
        ),
        title: const Text('Gestión de la compañia'),
      ),
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: cg.primaryColor,
        gradient: cg.gradientPpal(),
        items: const [
          TabItem(icon: Icons.business, title: 'Empresas', ),
          TabItem(icon: Icons.person_rounded, title: 'Personas'),
        ],
        initialActiveIndex: 0,//optional, default as 0
        onTap: (int i){

          pageController.jumpToPage(i);
          setState(() {});

        },
      ),
      body: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          HomeOptionsCompaniesPage(),
          HomeOptionsPersonsPage()
        ],
      ),
    );
  }
}
