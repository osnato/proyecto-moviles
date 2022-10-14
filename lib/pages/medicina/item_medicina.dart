import 'package:flutter/material.dart';

class ItemMedicina extends StatelessWidget {
  const ItemMedicina({super.key});

  @override
  Widget build(BuildContext context) {
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
            Text("Medicina")
          ],
        ),
      ),
      onTap: (){
        showDialog(
                        context: context,
                        builder: (builder) => AlertDialog(
                              title: Text("Medicina"),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Horario: 5:00 PM"),
                                  Text("Unidades: 3"),
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