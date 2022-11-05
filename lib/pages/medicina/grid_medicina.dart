import 'package:date_field/date_field.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proyecto/pages/medicina/item_medicina.dart';
import 'package:proyecto/pages/medicina/provider_medicina.dart';

class GridMedicina extends StatelessWidget {
  const GridMedicina({super.key});

  @override
  Widget build(BuildContext context) {
    var nombreController = TextEditingController();
    var horarioController = TextEditingController();
    var unidadesController = TextEditingController();
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
                      title: const Text("Medicina"),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              onSubmitted: ((value) {}),
                              controller: nombreController,
                              decoration: const InputDecoration(
                                labelText: 'Nombre de pastilla',
                                labelStyle: TextStyle(color: Colors.black),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color.fromARGB(255, 0, 0, 0))),
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: DateTimeFormField(
                              decoration: const InputDecoration(
                                hintStyle: TextStyle(color: Colors.black45),
                                errorStyle: TextStyle(color: Colors.redAccent),
                                border: OutlineInputBorder(),
                                suffixIcon: Icon(Icons.event_note),
                                labelText: 'Fecha y hora',
                              ),
                              mode: DateTimeFieldPickerMode.dateAndTime,
                              autovalidateMode: AutovalidateMode.always,
                              validator: (e) => (e?.day ?? 0) == 1
                                  ? 'Please not the first day'
                                  : null,
                              onDateSelected: (DateTime value) {
                                horarioController.text = value.toString();
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              onSubmitted: ((value) {}),
                              keyboardType: TextInputType.number,
                              controller: unidadesController,
                              decoration: const InputDecoration(
                                labelText: 'Cantidad',
                                labelStyle: TextStyle(color: Colors.black),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color.fromARGB(255, 0, 0, 0))),
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ],
                      ),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text("Cancelar")),
                        TextButton(
                            onPressed: () {
                              context.read<ProviderMedicina>().agregarMedicina(
                                  nombreController.text,
                                  horarioController.text,
                                  unidadesController.text);
                              Navigator.of(context).pop();
                            },
                            child: const Text("Agregar")),
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
              itemCount: context.watch<ProviderMedicina>().getMedicina.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ItemMedicina(
                      medicina:context.watch<ProviderMedicina>().getMedicina[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
