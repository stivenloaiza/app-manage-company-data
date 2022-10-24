import 'package:flutter/material.dart';
import 'package:app_manage_company_data/common/configuration.dart' as cg;
class ProgressWD extends StatelessWidget {
  const ProgressWD({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: SizedBox(
      height: 20,
      width: 20,
      child: CircularProgressIndicator(
        backgroundColor: cg.primaryColor,
        valueColor: AlwaysStoppedAnimation<Color>(cg.complementPrimaryColor),
      ),
    ));
  }
}