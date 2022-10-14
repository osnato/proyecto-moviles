import 'package:flutter/material.dart';
import 'package:proyecto/pages/dashboard/medicina.dart';
import 'package:proyecto/pages/medicina/add_medicina.dart';
import 'package:proyecto/pages/medicina/item_medicina.dart';

class GridMedicina extends StatelessWidget {
  const GridMedicina({super.key});

  @override
  Widget build(BuildContext context) {
    var txtbook = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text("Medicina"),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (builder) => AlertDialog(
                      title: Text("Medicina"),
                      content: AddMedicina(),
                      actions: [
                        TextButton(
                            onPressed: () {},
                            child: Text("Cancelar")),
                        TextButton(onPressed: () {}, child: Text("Agregar")),
                      ],
                    ));
          },
          child: Icon(Icons.add)),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onSubmitted: ((value) {}),
              controller: txtbook,
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: 'Buscar pastilla',
                  labelStyle: const TextStyle(color: Colors.black),
                  focusedBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 0, 0, 0))),
                  border: const OutlineInputBorder(),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                  )),
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: 8,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ItemMedicina(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
