import 'package:app_turistica/misc/colors.dart';
import 'package:app_turistica/widgets/app_large_text.dart';
import 'package:app_turistica/widgets/app_text.dart';
import 'package:app_turistica/widgets/responsive_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/app_buttons.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int gottenStars=4; //CANTIDA DE ESTRELLAS
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            //IMAGEN SUPERIOR DEL SITIO
            Positioned(
              left: 0,
                right: 0,
                child: Container(
                width: double.maxFinite,
                  height: 310,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("img/TorreDelReloj.jpg"),
                      fit: BoxFit.cover
                    ),

                  ),
            )),
            //ICONO PARA DESPLEGAR MENU
            Positioned(
                left: 20,
                top: 50,
                child: Row(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.menu), color: Colors.white,),

                  ],
                )),
            //EN ESTE CONTENEDOR ESTA LA UBICACION, CALIFICACION(ESTATICA) Y DESCRIPCION
            Positioned(
                top: 280,
                child: Container(
                  padding: const EdgeInsets.only(left: 20,right: 20,top: 30),
                  width: MediaQuery.of(context).size.width,
                  height: 500,
                  decoration: BoxDecoration(
                      color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)
                    )
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppLargeText(text: "Torre Del Reloj", color: Colors.black.withOpacity(0.8),),
                          AppLargeText(text: "\$ 0", color: AppColors.mainColor,)
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          Icon(Icons.location_on, color: AppColors.mainColor,),
                          SizedBox(width: 5,),
                          AppText(text: "COL, Popayán", color: AppColors.textColor1,)
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          Wrap(
                            children: List.generate(5, (index){
                              return Icon(Icons.star, color: index<gottenStars?AppColors.starColor:AppColors.textColor2,);
                            }),
                          ),
                          SizedBox(width: 10,),
                          AppText(text: "(4.0)", color: AppColors.textColor2,)
                        ],
                      ),
                      SizedBox(height: 5,),
                      AppLargeText(text: "Descripcion", color: Colors.black.withOpacity(0.8),size: 20,),
                      SizedBox(height: 5,),
                      AppText(text: "Llamada ‘la nariz de Popayán’, la Torre del Reloj se levanta en la esquina suroccidental del Parque Caldas. Fue construida entre 1673 y 1682 y el reloj de un solo puntero fue donado por los sacerdotes de la ciudad en 1737. El terremoto de 1983 le causó daños, pero estos fueron reparados sin necesidad de mover uno solo de los 90.000 ladrillos que forman su estructura. ", color: AppColors.mainTextColor,),

                    ],
                  ),
            )),
            //BOTONES INFERIORES DE FAVORITO Y BOTON AUXILIAR
            Positioned(
              bottom: 20,
                left: 20,
                right: 20,
                child: Row(
                  children: [
                    AppButtons(size: 60,
                        color: AppColors.textColor2,
                        backgroundColor: Colors.white,
                        borderColor: AppColors.textColor1,
                        isIcon:true,
                        icon: Icons.favorite_border,
                    ),
                    SizedBox(width: 20,),
                    ResponsiveButton(
                      isResponsive: true,

                    )
                  ],
            ))

          ],
        ),
      ),
    );
  }
}
