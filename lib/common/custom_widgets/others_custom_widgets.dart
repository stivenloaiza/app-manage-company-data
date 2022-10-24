import 'package:flutter/material.dart';
import 'package:app_manage_company_data/common/configuration.dart' as cg;

// ignore: must_be_immutable
class AlertInView extends StatefulWidget {
  @override
  _AlertInViewState createState() => _AlertInViewState();
  Color colorAlert;
  String alertTxt;
  bool visibleAlert;
  IconData iconAlert;
  Function actionCall;
  IconData iconCallFunction;
  AlertInView({
    super.key,
    required this.colorAlert,
    required this.alertTxt,
    required this.visibleAlert,
    required this.iconAlert,
    required this.actionCall,
    required this.iconCallFunction});
}

class _AlertInViewState extends State<AlertInView> {
  @override
  Widget build(BuildContext context) {
    return widget.visibleAlert?Padding(
      padding:  const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
      child: Container(
          decoration: BoxDecoration(
              color: widget.colorAlert,
              borderRadius: const BorderRadius.all(Radius.circular(20))
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(widget.iconAlert, color: cg.whiteColor, size: 15,),
                const SizedBox(width: 5,),
                Text(widget.alertTxt, style: const TextStyle(color: cg.whiteColor, fontWeight: FontWeight.bold, fontSize: 12,), maxLines: 5, textAlign: TextAlign.center,),
                if(widget.iconCallFunction!=null)IconButton(icon: Icon(widget.iconCallFunction, color: cg.whiteColor, size: 15,), onPressed: (){widget.actionCall();})
              ],
            ),
          )
      ),
    ):
    const SizedBox();
  }
}
