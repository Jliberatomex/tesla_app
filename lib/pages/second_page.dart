import 'package:coast/coast.dart';
import 'package:flutter/material.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'package:tesla_app/pages/widgets/specContainer.dart';
import 'package:tesla_app/pages/widgets/sizedbox20.dart';
import 'package:tesla_app/constants/color_Constants.dart';


class SecondScreen extends StatefulWidget {
  final nextPage;
  const SecondScreen(this.nextPage);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Positioned(
          right: -130,
          child: Crab(
            tag: "tesla",
            child: Container(
              height: MediaQuery.of(context).size.height * 0.8,
              child: SimpleShadow(
                child: Image.asset("assets/images/tesla2.png"),
                opacity: 1, // Default: 0.5
                // color: shadowColor, // Default: Black
                offset: Offset(0, 15), // Default: Offset(2, 2)
                sigma: 15,
              ),
            ),
          ),
        ),
        Positioned(
          left: 30,
          child: Column(
            children: [
              SpecContainer(
                "Bateria 100%",
                RotatedBox(
                  quarterTurns: 5,
                  child: Icon(
                    Icons.battery_std,
                    size: 30,
                  ),
                ),
              ),
              sizedBox20H,
              SpecContainer(
                "Diagnóstico",
                RotatedBox(
                  quarterTurns: 5,
                  child: Icon(
                    Icons.analytics_rounded,
                    size: 30,
                  ),
                ),
              ),
              sizedBox20H,
              Stack(
                children: [
                  Container(
                    height: 110,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      color: containerGrey,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 7,
                            offset: Offset(3, 3)),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          height: 40,
                          image: AssetImage(
                            "assets/images/traffic_icon.png",
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Alertas",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      top: 2,
                      right: 2,
                      child: Icon(
                        Icons.notification_important,
                        size: 30,
                        color: Colors.red,
                      )),
                ],
              ),
              sizedBox20H,
              SpecContainer(
                "Mantenimiento",
                Icon(
                  Icons.calendar_today_sharp,
                  size: 30,
                ),
              ),
              sizedBox20H,
              InkWell(
                onTap: () => widget.nextPage(2),
                child: Icon(
                  Icons.more_horiz,
                  size: 40,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}