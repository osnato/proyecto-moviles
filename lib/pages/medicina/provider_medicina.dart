import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



class ProviderMedicina with ChangeNotifier {
  final List<dynamic> _medicinaList = [{"nombre":"Paracetamol","horario":"2022-11-05 11_57:00.00","unidades":2},{"nombre":"Ibuprofeno","horario":"2022-11-08 11_57:00.00","unidades":5}];

  List<dynamic> get getMedicina => _medicinaList;

  void agregarMedicina(nombre,horario,unidades){
    _medicinaList.add({"nombre":nombre,"horario":horario,"unidades":unidades});
    notifyListeners();
  }

  List getTodayMedicine(dayOfWeek){
    List<dynamic>todayMedicine=[];
    _medicinaList.forEach((element)=>{
      print(element["horario"]),
      if(DateTime.parse(element["horario"].split(' ')[0]).weekday==dayOfWeek){
        element["hora"]=element["horario"].split(' ')[1],
        print(element["horario"].split(' ')[1]),

        todayMedicine.add(element)
      }
    });
    return todayMedicine;
  }

}
