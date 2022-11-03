import 'package:app_turistica/misc/colors.dart';
import 'package:app_turistica/widgets/app_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResponsiveButton extends StatelessWidget {

  //? SIGNIFICA QUE EL ATRIBUTO ES OPCIONAL
  bool? isResponsive;
  double? width;

  ResponsiveButton({Key? key, this.width=120,this.isResponsive=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: isResponsive==true?double.maxFinite:width,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.mainColor
        ),
        child: Row(
          mainAxisAlignment: isResponsive==true?MainAxisAlignment.spaceBetween:MainAxisAlignment.center,
          children: [
            isResponsive==true?Container(margin: const EdgeInsets.only(left: 20), child: AppText(text: "Ve Ahora", color: Colors.white,)):Container(),
            Image.asset("img/boton_avanzar.png"),
            
          ],
        ),
      ),
    );
  }
}
