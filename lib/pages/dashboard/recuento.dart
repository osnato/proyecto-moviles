import 'package:flutter/material.dart';
import 'package:analog_clock/analog_clock.dart';
import 'package:proyecto/pages/dashboard/medicina.dart';
import 'package:proyecto/pages/dashboard/proxima_toma.dart';

class Recuento extends StatelessWidget {
  const Recuento({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
      ),
      body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20,top: 10),
          child: Text("Bienvenido, Daniel",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ProximaToma(),
              Padding(
                padding: const EdgeInsets.only(left:  22.0),
                child: Text("Tu medicina de hoy",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Medicina(),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        
      ],
      
    )
    );
  }
}
