import 'package:flutter/material.dart';

import 'home.page.dart';

//Variables App
const String nameApp = "Manage Company";
const double opacityTxt=0.3;
const String rutaIconApp = 'assets/icons/icon-app.png';
const String urlBaseServices = 'http://localhost:3500';

//Colors
const Color primaryColor = Color(0XFF590776);
const Color whiteColor = Color(0XFFFFFFFF);
const Color complementPrimaryColor = Color(0XFF00CFFF);
const Color hintColor = Color(0XFF9EA7B6);
const Color redColorAlert = Color(0XFFF44336);
//Text colors
const Color textSubtitleGris= Color(0XFF777777);
const Color textHintTextFieldColor = Colors.grey;
//Background Colors
const Color backgroundGeneral = Color(0XFFD4E9F4);

//Gradients
LinearGradient gradientPpal(){
  return const LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors:[complementPrimaryColor, primaryColor],
  );
}

//TextStyles
TextStyle textStyleBigTitle(Color colorText){
  return TextStyle(
    color: colorText,
    fontSize: 20,
  );
}
TextStyle textStyleBigTitleBold(Color colorText){
  return TextStyle(
    color: colorText,
    fontSize: 20,
    fontWeight: FontWeight.bold
  );
}
TextStyle textStyleSubTitle(Color colorText){
  return TextStyle(
    color: colorText,
    fontSize: 18,
  );
}
//textStyle Label text textField
TextStyle textStyleLabelTextField(){
  return const TextStyle(
      color: textSubtitleGris,
      fontSize: 12,
      fontWeight: FontWeight.bold
  );
}
//textStyle CardButton text
TextStyle textStyleCardButton(){
  return const TextStyle(
      color: textSubtitleGris,
      fontSize: 12,
  );
}
//textStyle item menu drawer
TextStyle textStyleItemMenuDrawer(){
  return const TextStyle(
    color: whiteColor,
    fontSize: 14,
  );
}

//Controllers
//Routes animated
Route? createRoute(String pageRoute, {var parametros, var parametros2, var parametros3}) {
  switch(pageRoute){
    case 'home':{
      return PageRouteBuilder(
          pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) => const HomePage(),
          transitionDuration: const Duration(milliseconds: 800),
          transitionsBuilder: (context, animation, secondaryAnimation, child){
            final curvedAnimation = CurvedAnimation(parent: animation, curve: Curves.easeInOut);
            return FadeTransition(
              opacity: Tween<double>(begin: 0.0, end: 1.0).animate(curvedAnimation),
              child: child,
            );
          }
      );
    }break;
    default:
      return null;
  }

}

