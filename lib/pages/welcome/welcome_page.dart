//CREAMOS PLANTILLA CON STFUL
import 'package:app_turistica/widgets/app_text.dart';
import 'package:app_turistica/widgets/responsive_button.dart';
import 'package:flutter/material.dart';

import '../../misc/colors.dart';
import '../../widgets/app_large_text.dart';


class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  //LISTA DE IMAGENES
  List images =[
    'Fondo.jpg',
    'Fondo.jpg',
    'Fondo.jpg',

  ];

  List text=[
  'Cultura',
    'Sitios Naturales',
    'Folklore '
  ];

  List resumen=[
    'Museos, arquitectura y espacios urbanos, lugares históricos, lugares arqueologicos y pueblos.',
    'Montañas, planicies, valles, quebradas, lagos, lagunas, pantanos, rios, areas protegidas, entre otros.',
    'Manifestaciones religiosas, ferias, mercados, música, danza, artesanias y gastronomia.'
  ];
  @override
  Widget build(BuildContext context) {
    //RETORNAMOS CUERPO
    return Scaffold(
      //REALIZAMOS DESPLAZAMIENTO DE PAGINA (DIRECCION,ETC.)
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,  //OJO!! AQUI SE TOMA DE EJEMPLO 3 ELEMENTOS PARA EL CARRUSEL
          itemBuilder: (_, index){
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  //"img/"+images[index]
                  'img/${images[index]}'
                ),
                fit: BoxFit.cover  //LA IMAGEN OCUPE TODA LA PANTALLA
              )
            ),
            //REALIZAMOS IMAGEN DENTRO DE LA IMAGEN DE FONDO
            child: Container(
              margin: const EdgeInsets.only(top:150, left: 20, right: 20),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppLargeText(text: text[index]),
                      AppText(text: "Popayán-Cauca", size: 30,),
                      SizedBox(height: 20,),
                      Container(
                        width: 250,
                        child: AppText(
                          text: resumen[index],
                          color: AppColors.textColor2,
                          size: 14,
                        ),
                      ),
                      SizedBox(height: 25,),
                      ResponsiveButton(width: 100,)

                    ],
                  ),
                  Column(
                    children: List.generate(3, (indexDots){
                      return Container(
                        margin: const EdgeInsets.only(bottom: 2),
                        width: 8,
                        height: index==indexDots?25:8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: index==indexDots?AppColors.mainColor:AppColors.mainColor.withOpacity(0.3)
                        ),
                      );
                    })
                  )
                ],
              )
            ) ,
          );
      }),
    );
  }
}
