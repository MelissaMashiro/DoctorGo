import 'package:flutter/material.dart';

const kBlueTextStyle = TextStyle(fontSize: 15, color: Color(0xFF00C5C1));

const kColorDoctor = Color(0xFF00C5C1);

const kPrimaryBarColor = Color(0xFF181C28);

//decoracion del contendor de los inputs
final kBoxFormDecoration = BoxDecoration(
    color: Color(0xFFF0F0F0), borderRadius: BorderRadius.circular(10));

//boxdecoration de la caja azul de abajo del login
const kBoxDecorationLogin = BoxDecoration(
  boxShadow: [
    BoxShadow(color: Colors.black, blurRadius: 18, offset: Offset(0, 4))
  ],
  color: Color(0xFF181C28),
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(35),
    topRight: Radius.circular(35),
  ),
);

//listas del dropDown
const List kGeneros = ['Masculino', 'Femenino'];

const List kTiposSangre = ['O+', 'A+', 'A-'];

const List kEstadoCivil = ['Casado', 'Soltero'];

const List kPaises = ['Colombia', 'Chile'];

const List kDepartamentos = ['Atlántico', 'Córdoba'];

const List kCiudades = ['Santa Marta', 'Barranquilla'];
