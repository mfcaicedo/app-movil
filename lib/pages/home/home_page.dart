import 'package:app_turistica/misc/colors.dart';
import 'package:app_turistica/widgets/app_large_text.dart';
import 'package:app_turistica/widgets/app_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        //BARRA DE NAVEGACION SUPERIOR
        Container(
          padding: const EdgeInsets.only(top: 70, left: 20),
          child: Row(
            children: [
              Icon(Icons.menu, size: 30, color: Colors.black54),
              Expanded(child: Container()),
              Container(
                margin: const EdgeInsets.only(right: 20),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.withOpacity(0.5),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        //TEXTO DESCUBRE
        Container(
          margin: const EdgeInsets.only(left: 20),
          child: AppLargeText(text: "Descubre"),
        ),
        SizedBox(
          height: 10,
        ),
        //TABBAR
        Container(
            child: Align(
          alignment: Alignment.centerLeft,
          child: TabBar(
            labelPadding: const EdgeInsets.only(left: 20, right: 20),
            controller: _tabController,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            isScrollable: true,
            indicatorSize: TabBarIndicatorSize.label,
            indicator:
                CircleTabIndicator(color: AppColors.mainColor, radius: 4),
            tabs: [
              Tab(text: "Lugares"),
              Tab(text: "Inspiraciones"),
              Tab(text: "Emociones"),
            ],
          ),
        )
        ),
        Container(
          padding: const EdgeInsets.only(left: 20),
          height: 300,
          width: double.maxFinite,
          child: TabBarView(
            controller: _tabController,
            children: [
              ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext, int index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 10, top: 10),
                    width: 200,
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      image: DecorationImage(
                          image: AssetImage("img/TorreDelReloj.jpg"),
                          fit: BoxFit.cover),
                    ),
                  );
                },
              ),
              Text("Allí"),
              Text("Adiós"),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppLargeText(
                text: "Explora más",
                size: 22,
              ),
              AppText(
                text: "Ver Todo",
                color: AppColors.textColor1,
              ),
            ],
          ),
        )
      ],
    ));
  }
}

class CircleTabIndicator extends Decoration {
  final Color color;
  double radius;

  CircleTabIndicator({required this.color, required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    // TODO: implement createBoxPainter
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final Color color;
  double radius;
  _CirclePainter({required this.color, required this.radius});

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;
    final Offset circleOfset = Offset(
        configuration.size!.width / 2 - radius / 2,
        configuration.size!.height - radius);
    canvas.drawCircle(offset + circleOfset, radius, _paint);
  }
}
