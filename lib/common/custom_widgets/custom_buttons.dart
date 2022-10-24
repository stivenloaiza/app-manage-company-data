import 'package:flutter/material.dart';
import 'package:app_manage_company_data/common/configuration.dart' as cg;

class ButtonCustom extends StatelessWidget {
  const ButtonCustom({
    super.key,
    required this.mediaWidth,
    required this.mediaWidthPercent,
    required this.txtBtn,
    required this.clickBtn,
  });

  final double mediaWidth;
  final double mediaWidthPercent;
  final String txtBtn;
  final Function clickBtn;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        clickBtn();
      },
      child: Container(
        margin: EdgeInsets.only(top: 5, bottom: 5, left: mediaWidth*0.12, right:mediaWidth*0.12 ),
        height: 40,
        width: mediaWidth*mediaWidthPercent,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: cg.gradientPpal(),
        ),
        child: Center(child: Text(txtBtn, style: const TextStyle(color: cg.whiteColor, fontWeight: FontWeight.bold, fontSize: 18),)),
      ),
    );
  }
}

class CardButton extends StatelessWidget {
  const CardButton({
    super.key,
    required this.widthThis,
    required this.textCard,
    required this.pathImageIcon,
    required this.tapFunction
  });

  final double widthThis;
  final String textCard;
  final String pathImageIcon;
  final Function tapFunction;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widthThis*0.266,
      height: widthThis*0.266,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
          side: const BorderSide(
            color: cg.textSubtitleGris,
            width: .1,
          ),
        ),
        elevation: 3,
        child: InkWell(
          onTap: tapFunction(),
          child: Padding(
            padding: const EdgeInsets.only(left: 4, right: 4, top:8, bottom: 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(pathImageIcon, height: widthThis*0.1),
                //Icon(Icons.person),
                Text(textCard, textAlign: TextAlign.center, style: cg.textStyleCardButton(),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}