import 'package:app_turistica/pages/navpages/bar_item_page.dart';
import 'package:app_turistica/pages/home_page.dart';
import 'package:app_turistica/pages/navpages/my_page.dart';
import 'package:app_turistica/pages/navpages/search_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  //PAGINAS DE NAVEGACION
  List pages=[
    HomePage(),
    BarItemPage(),
    SearchPage(),
    MyPage()
  ];

  int currentIndex=0;
  void onTap(int index){
    setState(() {
      currentIndex=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //INDICES DE PAGINAS DEPENDIENDO DEL ICONO
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 0,
        selectedFontSize: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showUnselectedLabels: false,
        showSelectedLabels: false,
        elevation: 0,
        //LISTA DE ICONOS EN LA BARRA DE NAVEGACION
        items: const [
          BottomNavigationBarItem(label:'Inicio',icon:Icon(Icons.home)),
          BottomNavigationBarItem(label:'Bar',icon:Icon(Icons.bar_chart_sharp)),
          BottomNavigationBarItem(label:'Busqueda',icon:Icon(Icons.search)),
          BottomNavigationBarItem(label:'Perfil',icon:Icon(Icons.person))
        ],
      ),
    );
  }
}
