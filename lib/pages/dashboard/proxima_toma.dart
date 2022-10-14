import 'package:analog_clock/analog_clock.dart';
import 'package:flutter/material.dart';

class ProximaToma extends StatelessWidget {
  const ProximaToma({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Color.fromARGB(255, 255, 255, 255)),
            height: MediaQuery.of(context).size.height / 5,
            width: MediaQuery.of(context).size.width * .87,
            child: Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Próxima toma",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                      Text("Paracetamol: 10:30")
                    ],
                  ),
                  AnalogClock(
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 2.0,
                            color: Color.fromARGB(255, 30, 44, 233)
                          ),
                        color: Colors.white,
                        shape: BoxShape.circle
                      ),
                    width: 120.0,
                    isLive: true,
                    hourHandColor: Colors.black,
                    minuteHandColor: Colors.black,
                    showSecondHand: true,
                    numberColor: Colors.black,
                    showNumbers: true,
                    showAllNumbers: true,
                    textScaleFactor: 1.4,
                    showTicks: true,
                  )
                ],
              ),
            ),
          ),
        );
  }
}