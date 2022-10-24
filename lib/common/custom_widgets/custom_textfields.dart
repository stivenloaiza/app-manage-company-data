import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:app_manage_company_data/common/configuration.dart' as cg;


class BaseBackgroundTextFields extends StatelessWidget {

  BaseBackgroundTextFields(this.textGet, {super.key});

  Widget textGet;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        gradient: cg.gradientPpal(),
      ),
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Center(
          child: Container(
            margin: const EdgeInsets.all(1.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: cg.whiteColor
            ),
            child: textGet,
          ),
        ),
      )
    );
  }
}


class TextfieldCedula extends StatelessWidget {
  TextfieldCedula({
    required this.mediaWidth,
    required this.mediaHeight,
    required this.txtCedula,
  });
  final double mediaWidth;
  final double mediaHeight;
  TextEditingController txtCedula;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: txtCedula,
      maxLength: 15,
      style: cg.textStyleTextfieldLogin(),
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        errorStyle: const TextStyle(color: cg.primaryColor),
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        contentPadding:
        const EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
        prefixIcon: const Icon(Icons.credit_card_sharp, color: cg.textSubtitleGris,),
        labelText: 'Cédula',
        labelStyle: cg.textStyleLabelTextfield(),
        counterText: '',
        hintText:'Cédula',
        hintStyle: cg.textStyleTextfieldLoginHint(),
      ),
      validator: (value){
        if (value!.isEmpty) {
          return 'Debes ingresar Cédula';
        } else if(value.length<4){
          return 'Cédula incorrecta';
        }else {
          try{
            int ceduTemp = int.parse(value);
            return null;
          }catch(e){
            return 'Cédula incorrecta, solo debe tener números';
          }

        }
      },
    );
  }
}

class TextfieldPassword extends StatelessWidget {
  TextfieldPassword({
    required this.txtPass,
  });

  TextEditingController txtPass;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: txtPass,
      maxLength: 30,
      style: cg.textStyleTextfieldLogin(),
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
      decoration: InputDecoration(
        errorStyle: const TextStyle(color: cg.primaryColor),
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        contentPadding:
        const EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
        prefixIcon: const Icon(Icons.lock_outline, color: cg.textSubtitleGris,),
        labelText: 'Contraseña',
        labelStyle: cg.textStyleLabelTextfield(),
        counterText: '',
        hintText:'Contraseña',
        hintStyle: cg.textStyleTextfieldLoginHint(),
      ),
      validator: (value){
        if (value!.isEmpty) {
          return 'Debes ingresar contraseña';
        } else if(value.length<4){
          return 'Contraseña incorrecta, muy corta';
        }else {
          return null;
        }
      },
    );
  }
}

class TextfieldPasswordConfirmation extends StatelessWidget {
  TextfieldPasswordConfirmation({
    required this.txtPass,
  });

  TextEditingController txtPass;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: txtPass,
      maxLength: 30,
      style: cg.textStyleTextfieldLogin(),
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
      decoration: InputDecoration(
        errorStyle: const TextStyle(color: cg.primaryColor),
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        contentPadding:
        const EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
        prefixIcon: const Icon(Icons.lock_outline_rounded, color: cg.textSubtitleGris,),
        labelText: 'Confirmación contraseña',
        labelStyle: cg.textStyleLabelTextfield(),
        counterText: '',
        hintText:'Confirmación contraseña',
        hintStyle: cg.textStyleTextfieldLoginHint(),
      ),
      validator: (value){
        if (value!.isEmpty) {
          return 'Debes repetir contraseña';
        } else if(value.length<4){
          return 'Contraseña incorrecta, muy corta';
        }else {
          return null;
        }
      },
    );
  }
}

class TextfieldEmail extends StatelessWidget {
  TextfieldEmail({
    required this.txtEmail
  });

  TextEditingController txtEmail;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: txtEmail,
      maxLength: 90,
      style: cg.textStyleTextfieldLogin(),
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        errorStyle: const TextStyle(color: cg.primaryColor),
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        contentPadding:
        const EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
        prefixIcon: const Icon(Icons.alternate_email, color: cg.textSubtitleGris,),
        labelText: 'Correo electrónico',
        labelStyle: cg.textStyleLabelTextfield(),
        counterText: '',
        hintText:'Correo electrónico',
        hintStyle: cg.textStyleTextfieldLoginHint(),
      ),
      validator: (value){
        if (value!.isEmpty) {
          return 'Debes ingresar correo electrónico';
        } else if(value.length<5){
          return 'Correo electrónico incorrecto';
        }else if(!EmailValidator.validate(value)){
          return 'Correo electrónico incorrecto';
        }else {
          return null;
        }
      },
    );
  }
}

class TextfieldTelefono extends StatelessWidget {
  TextfieldTelefono({
    required this.txtTelefono,
  });
  TextEditingController txtTelefono;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: txtTelefono,
      maxLength: 7,
      style: cg.textStyleTextfieldLogin(),
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        errorStyle: const TextStyle(color: cg.primaryColor),
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        contentPadding:
        const EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
        prefixIcon: const Icon(Icons.phone, color: cg.textSubtitleGris,),
        labelText: 'Teléfono fijo',
        labelStyle: cg.textStyleLabelTextfield(),
        counterText: '',
        hintText:'Teléfono fijo',
        hintStyle: cg.textStyleTextfieldLoginHint(),
      ),
      validator: (value){
        if (value!.isEmpty) {
          //return 'Debes ingresar teléfono';
          return null;
        } else{
          try{
            int telTemp = int.parse(value);
            if(telTemp<1000000 || telTemp>9999999){
              return 'Corrija el teléfono';
            }else{
              return null;
            }
          }catch(e){
            return 'Teléfono incorrecto, solo debe tener números';
          }
        }
      },
    );
  }
}

class TextfieldCelular extends StatelessWidget {
  TextfieldCelular({
    required this.txtCelular,
  });
  TextEditingController txtCelular;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: txtCelular,
      maxLength: 10,
      style: cg.textStyleTextfieldLogin(),
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        errorStyle: const TextStyle(color: cg.primaryColor),
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        contentPadding:
        const EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
        prefixIcon: const Icon(Icons.phone_android, color: cg.textSubtitleGris,),
        labelText: 'Teléfono celular',
        labelStyle: cg.textStyleLabelTextfield(),
        counterText: '',
        hintText:'Teléfono celular',
        hintStyle: cg.textStyleTextfieldLoginHint(),
      ),
      validator: (value){
        if (value!.isEmpty) {
          return 'Debes ingresar celular';
        } else{
          try{
            int telTemp = int.parse(value);
            if(telTemp<1000000000 || telTemp>9999999999){
              return 'Corrija el celular';
            }else{
              return null;
            }
          }catch(e){
            return 'Celular incorrecto, solo debe tener números';
          }
        }
      },
    );
  }
}


class TextfieldDireccion extends StatelessWidget {
  TextfieldDireccion({
    required this.txtDireccion,
  });
  TextEditingController txtDireccion;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: txtDireccion,
      maxLength: 80,
      style: cg.textStyleTextfieldLogin(),
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        errorStyle: const TextStyle(color: cg.primaryColor),
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        contentPadding:
        const EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
        prefixIcon: const Icon(Icons.home_outlined, color: cg.textSubtitleGris,),
        labelText: 'Dirección',
        labelStyle: cg.textStyleLabelTextfield(),
        counterText: '',
        hintText:'Dirección',
        hintStyle: cg.textStyleTextfieldLoginHint(),
      ),
      validator: (value){
        if (value!.isEmpty) {
          return 'Debes ingresar dirección';
        } else {
          return null;
        }
      },
    );
  }
}

class TextfieldNombresyApellidos extends StatelessWidget {
  TextfieldNombresyApellidos({
    required this.txtNombre,
  });
  TextEditingController txtNombre;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: txtNombre,
      maxLength: 120,
      style: cg.textStyleTextfieldLogin(),
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        errorStyle: const TextStyle(color: cg.primaryColor),
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        contentPadding:
        const EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
        prefixIcon: const Icon(Icons.person, color: cg.textSubtitleGris,),
        labelText: 'Nombres y apellidos',
        labelStyle: cg.textStyleLabelTextfield(),
        counterText: '',
        hintText:'Nombres y apellidos',
        hintStyle: cg.textStyleTextfieldLoginHint(),
      ),
      validator: (value){
        if (value!.isEmpty) {
          return 'Debes ingresar nombres y apellidos';
        } else {
          return null;
        }
      },
    );
  }
}

class TextfieldEspecialidad extends StatelessWidget {
  TextfieldEspecialidad({
    required this.txtEspecialidad,
  });
  TextEditingController txtEspecialidad;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: txtEspecialidad,
      maxLength: 120,
      style: cg.textStyleTextfieldLogin(),
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        errorStyle: const TextStyle(color: cg.primaryColor),
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        contentPadding:
        const EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
        prefixIcon: const Icon(Icons.medical_services_outlined, color: cg.textSubtitleGris,),
        labelText: 'Especialidad',
        labelStyle: cg.textStyleLabelTextfield(),
        counterText: '',
        hintText:'Especialidad',
        hintStyle: cg.textStyleTextfieldLoginHint(),
      ),
      validator: (value){
        if (value!.isEmpty) {
          return 'Debe ingresar su especialidad';
        } else {
          return null;
        }
      },
    );
  }
}