import 'package:coast/coast.dart';
import 'package:flutter/material.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'package:tesla_app/constants/color_Constants.dart';
import 'package:tesla_app/pages/widgets/last_trip_container.dart';
import 'package:tesla_app/pages/widgets/sizedBox20.dart';

class LastScreen extends StatelessWidget {
  const LastScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0XffF0F1EF),
       body: Stack(
         children: [
           Positioned(
             top: -400,
             right: -110,
             child: Crab(
               tag: "Tesla",
                child: Container(
                  height: 750,
                  child: SimpleShadow(
                    child: SimpleShadow(
                      child: Image.asset("assets/images/tesla2.png"),
                      color: Colors.red,
                      opacity: 1,
                      offset: Offset(28,20),
                      sigma: 15,
                    ),
                    opacity: 1,
                    offset: Offset(0,15),
                    sigma: 15,
                  ),
                )
                )
             ),
          const Positioned(
            left: 10,
            top: 20,
            child: SafeArea(
              bottom: false,
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Icon(
                  Icons.notes_rounded,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Icon(Icons.keyboard_arrow_down_sharp,
                        size: 25,
                        color: Colors.grey[600],
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Ultimos Viajes",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[600],
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const LastTripContainer("TOTAL 0:20", "Centro Histórico,Ciudad de México"),
                      const SizedBox(
                        height: 3,
                      ),
                      const LastTripContainer("TOTAL 1:15", "Chapultepec, Ciudad de México"),
                      const SizedBox(
                        height: 3,
                      ),
                      const LastTripContainer("TOTAL 0:45", "Museo Inbursa, Ciudad de México"),
                      sizedBox20H,
                      Container(
                        height: 70,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: containerGrey
                        ),
                        child: const Center(
                          child: Text(
                            "Más Viajes",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                            ),
                            ),
                        ),

                      ),
                      sizedBox20H,
                    ],
                  )
                ],
              ),
              )
            )
         ],
       ), 
    );
  }
}