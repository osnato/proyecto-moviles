import 'package:flutter/material.dart';

class ItemMedicina extends StatelessWidget {
  const ItemMedicina({super.key, required this.medicina});
  final Map medicina;

  @override
  Widget build(BuildContext context) {
    print(medicina);
    return GestureDetector(
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(100)),
          border: Border.all(color: Colors.black),
          color: Colors.white
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${medicina["nombre"]}")
          ],
        ),
      ),
      onTap: (){
        showDialog(
                        context: context,
                        builder: (builder) => AlertDialog(
                              title: Text("${medicina["nombre"]}"),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Horario: ${medicina["horario"]}"),
                                  Text("Unidades: ${medicina["unidades"]}"),
                                ],
                              ),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text("Aceptar")),
                                TextButton(
                                    onPressed: () {
                                      
                                    },
                                    child: Text("Eliminar")),
                              ],
                            ));
      },
    );
  }
}