import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:app_manage_company_data/common/configuration.dart' as cg;
import 'package:app_manage_company_data/companies/companies.services.dart';
import 'package:app_manage_company_data/common/custom_widgets/others_custom_widgets.dart';
import 'package:app_manage_company_data/common/custom_widgets/custom_forms.dart';

class CreateCompanyPage extends StatefulWidget {

  CreateCompanyPage({super.key});

  @override
  _CreateCompanyPageState createState() => _CreateCompanyPageState();
}

class _CreateCompanyPageState extends State<CreateCompanyPage> {

  final _formKey = GlobalKey<FormState>();
  TextEditingController txtNombres = new TextEditingController();
  TextEditingController txtEspecialidad = new TextEditingController();
  TextEditingController txtEmail = new TextEditingController();
  TextEditingController txtPass = new TextEditingController();
  TextEditingController txtPass2 = new TextEditingController();
  bool cargando=false;
  bool alertVisible=false;
  Color alertColor= cg.redColorAlert;
  String alertTxt='';
  IconData alertIcon = Icons.cancel;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double widthThis = MediaQuery.of(context).size.width;
    double heightThis = MediaQuery.of(context).size.height;
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: ListView(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      icon: const Icon(Icons.arrow_back, color: cg.hintColor,),
                      onPressed: (){
                        Navigator.pop(context);
                      }),
                  Padding(
                    padding: EdgeInsets.only(top: heightThis*0.02),
                    child: Image.asset(cg.rutaIconApp, height: heightThis*0.04,),
                  ),
                  IconButton(
                      icon: Icon(Icons.arrow_back, color: cg.hintColor.withOpacity(0),),
                      onPressed: null
                  )
                ],
              ),
              SizedBox(height: heightThis*0.01,),
              AlertInView(alertTxt: alertTxt, colorAlert: alertColor, iconAlert: alertIcon,visibleAlert: alertVisible, actionCall: (){}, iconCallFunction: Icons.check_circle),
              Padding(
                padding: EdgeInsets.only(right: widthThis*0.035, left: widthThis*0.035 , top: 8, bottom: 8),
                child: cargando?
                Padding(
                    padding: EdgeInsets.only(left:  widthThis*0.425, right:  widthThis*0.425,),
                    child: const CircularProgressIndicator(backgroundColor: cg.complementPrimaryColor,)):
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                    side: const BorderSide(
                      color: cg.textSubtitleGris,
                      width: .1,
                    ),
                  ),
                  elevation: 3,
                  child: Form(
                    key: _formKey,
                    child: Padding(
                        padding:  EdgeInsets.only(right: widthThis*0.05, left: widthThis*0.05 , top: 15, bottom: 8),
                        child: FormUserRegis(heightThis: heightThis, widthThis: widthThis, txtEmail: txtEmail, txtPass: txtPass, txtPass2: txtPass2, tapRegistrar: tapRegistrarUser,),

                    ),
                  ),
                ),
              ),

              SizedBox(height: heightThis*0.03,),

            ],
          ),
        ),
      ),
    );
  }

  void tapRegistrarUser() async {
    resetAlert();
    if (_formKey.currentState!.validate()) {
      if(txtPass.text!=txtPass2.text){
        alertVisible = true;
        alertTxt = 'La contraseña no coincide';
      }else{
        cargando=true;
        setState(() {});
        Map<String,dynamic> req = {
          "user": {
            "email": txtEmail.text.trim(),
            "password": txtPass.text.trim(),
          }
        };
        http.Response resp;
        resp = await CompanyServices.postCreateCompany(req);
        if(resp.statusCode==400){
          alertVisible = true;
          alertTxt = '!Ups Algo nos fallo en el envio de datos, disculpa.';
        }else if(resp.statusCode==200){
          alertTxt = '!Genial, guardamos los datos de la nueva empresa';
          alertColor = Colors.green;
          alertIcon = Icons.check_circle;
          alertVisible = true;
          resetForms();
        }else{
          alertVisible = true;
          alertTxt = '!Ups ocurrio un error, vuelve a intentarlo';
        }
      }

    }
    cargando=false;
    setState(() {});

  }

  void resetAlert(){
    alertVisible = false;
    alertTxt = '';
    alertColor = cg.redColorAlert;
    alertIcon = Icons.cancel;
  }

  void resetForms(){
    txtNombres.text='';
    txtEspecialidad.text='';
    txtEmail.text='';
    txtPass.text='';
    txtPass2.text='';
  }


}