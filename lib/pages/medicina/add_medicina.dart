import 'package:date_field/date_field.dart';
import 'package:flutter/material.dart';

class AddMedicina extends StatelessWidget {
  const AddMedicina({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
                onSubmitted: ((value) {}),
                decoration: InputDecoration(

                    labelText: 'Nombre de pastilla',
                    labelStyle: const TextStyle(color: Colors.black),
                    focusedBorder: const OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 0, 0, 0))),
                    border: const OutlineInputBorder(),
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
            validator: (e) =>
                (e?.day ?? 0) == 1 ? 'Please not the first day' : null,
            onDateSelected: (DateTime value) {
              print(value);
            },
          ),
        ),
      Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
                onSubmitted: ((value) {}),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: 'Cantidad',
                    labelStyle: const TextStyle(color: Colors.black),
                    focusedBorder: const OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 0, 0, 0))),
                    border: const OutlineInputBorder(),
                    ),
              ),
        ),
        
      ],
    );
  }
}
