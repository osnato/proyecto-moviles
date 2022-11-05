import 'package:flutter/material.dart';

class Medicina extends StatelessWidget {
  const Medicina({super.key, required this.item});
  final Map item;

  @override
  Widget build(BuildContext context) {
    return Stack(
    
  children: <Widget>[
    Positioned(
      // top: 10,
      child: Container(
        width: 150,
        height: 250,
        // color: Colors.red,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black
          ),
          gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 0, 23, 99),
                  Color.fromARGB(255, 197, 220, 255),
                ],
              ),
          borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
        ),
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("${item["nombre"]}",style: TextStyle(fontSize: 23,color: Colors.white, fontWeight: FontWeight.bold),),
              Text("${item["hora"]}",style: TextStyle(fontSize: 20,color: Colors.white, fontWeight: FontWeight.bold),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Text("${item["unidades"]} ",style: TextStyle(fontSize: 25,color: Colors.white, fontWeight: FontWeight.bold),),
                  const Text("Unidades",style: TextStyle(fontSize: 15,color: Colors.white, fontWeight: FontWeight.bold),)
                ],
              )
            ],
          ),
        ),
      ),
    ),
    Positioned(
      // top: -10,
      left: 0,
      child: Container(
        decoration: BoxDecoration(
          // color: Color.fromARGB(74, 255, 255, 255),
          borderRadius: BorderRadius.all(Radius.circular(100)),
          ),
        width: 50,
        height: 50,
        child: Image.network("https://www.pngplay.com/wp-content/uploads/12/Pills-PNG-Clipart-Background.png")
        ),
    )
    
  ],
);}
}