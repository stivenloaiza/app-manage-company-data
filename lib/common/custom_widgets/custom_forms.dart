import 'package:flutter/material.dart';
import 'custom_buttons.dart';
import 'custom_textfields.dart';
import 'package:app_manage_company_data/common/configuration.dart' as cg;

// ignore: must_be_immutable
class FormIPSRegis extends StatelessWidget {
  double heightThis;
  double widthThis;
  TextEditingController txtNombres;
  TextEditingController txtEspecialidad;
  TextEditingController txtEmail;
  TextEditingController txtPass;
  TextEditingController txtPass2;
  Function tapRegistrar;
  FormIPSRegis({
    required this.heightThis,
    required this.widthThis,
    required this.txtNombres,
    required this.txtEspecialidad,
    required this.txtEmail,
    required this.txtPass,
    required this.txtPass2,
    required this.tapRegistrar});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [Text('Registro gratuito especialista', style: cg.textStyleBigTitleBold(cg.primaryColor),),],),
        SizedBox(height: heightThis*0.02,),
        BaseBackgroundTextFields(TextfieldNombresyApellidos(txtNombre: txtNombres),),
        SizedBox(height: heightThis*0.015,),
        BaseBackgroundTextFields(TextfieldEspecialidad(txtEspecialidad: txtEspecialidad),),
        SizedBox(height: heightThis*0.015,),
        BaseBackgroundTextFields(TextfieldEmail(txtEmail: txtEmail),),
        SizedBox(height: heightThis*0.015,),
        BaseBackgroundTextFields(TextfieldPassword(txtPass: txtPass),),
        SizedBox(height: heightThis*0.015,),
        BaseBackgroundTextFields(TextfieldPasswordConfirmation(txtPass: txtPass2),),
        SizedBox(height: heightThis*0.02,),
        ButtonCustom(mediaWidth: widthThis, mediaWidthPercent: 0.3, txtBtn: 'Enviar', clickBtn: tapRegistrar),
        SizedBox(height: heightThis*0.01,),
      ],
    );
  }
}


// ignore: must_be_immutable
class FormUserRegis extends StatelessWidget {
  double heightThis;
  double widthThis;
  TextEditingController txtEmail;
  TextEditingController txtPass;
  TextEditingController txtPass2;
  Function tapRegistrar;
  FormUserRegis({
    required this.heightThis,
    required this.widthThis,
    required this.txtEmail,
    required this.txtPass,
    required this.txtPass2,
    required this.tapRegistrar});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [Text('Registro gratuito usuario', style: cg.textStyleBigTitleBold(cg.primaryColor),),],),
        SizedBox(height: heightThis*0.02,),
        BaseBackgroundTextFields(TextfieldEmail(txtEmail: txtEmail),),
        SizedBox(height: heightThis*0.015,),
        BaseBackgroundTextFields(TextfieldPassword(txtPass: txtPass),),
        SizedBox(height: heightThis*0.015,),
        BaseBackgroundTextFields(TextfieldPasswordConfirmation(txtPass: txtPass2),),
        SizedBox(height: heightThis*0.02,),
        ButtonCustom(mediaWidth: widthThis, mediaWidthPercent: 0.3, txtBtn: 'Enviar', clickBtn: tapRegistrar),
        SizedBox(height: heightThis*0.01,),
      ],
    );
  }
}