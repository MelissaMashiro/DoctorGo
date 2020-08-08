import 'package:doctor_go/components/RoundedButton.dart';
import 'package:doctor_go/pages/nucleoFamiliar_page.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class AddHijo extends StatefulWidget {
  static String id = 'addHijo_screen';

  @override
  _AddHijoState createState() => _AddHijoState();
}

class _AddHijoState extends State<AddHijo> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool _autoValidate = false;

  String _nombres;
  String _apellidos;
  String _cedula;
  //cosas para el dropdown
  String generoSeleccionado; //valor por defecto
  String tipoSangreSeleccionado;
  String estadoCivilSeleccionado;
  String paisSeleccionado;
  String departamentoSeleccionado;
  String ciudadSeleccionado;

  String validateNomApe(String value) {
    //mejorar, que no permita simbolos
    if (value.length < 3)
      return 'digite un nombre o apellido valido';
    else
      return null;
  }

  String validateCedula(String value) {
    if (value.length < 6)
      return 'Digite una cédula válida';
    else
      return null;
  }

  //guardada final de la informacion si todo es correcto
  void _validateInputs() {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      Navigator.pushNamed(context, NucleoFamiliar.id);
    } else {
      setState(() {
        _autoValidate = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _nombreInput(),
                    _nombreInput(),
                    _nombreInput(),
                    _nombreInput(),
                    _dropDownGenero('seleccione un género'),
                    _dropDownGenero('seleccione un género'),
                    _dropDownGenero('seleccione un género'),
                    _dropDownGenero('seleccione un género'),
                    _dropDownGenero('seleccione un género'),
                    _dropDownGenero('seleccione un género'),
                    Center(
                      child: RoundedButton(
                        text: Text(
                          'GUARDAR',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () =>
                            Navigator.pushNamed(context, NucleoFamiliar.id),
                        colour: kColorDoctor,
                      ),
                    ),
                    Center(
                      child: RoundedButton(
                        text: Text(
                          'CREAR HISTORIA CLÍNICA',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: null,
                        colour: kPrimaryBarColor,
                      ),
                    ),
                  ],
                )),
          ),
        ),
      ),
    );
  }

  Widget _nombreInput() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        decoration: kBoxFormDecoration,
        child: TextFormField(
          decoration: const InputDecoration(labelText: 'Nombres'),
          keyboardType: TextInputType.text,
          validator: validateNomApe,
          onSaved: (String val) {
            //_nombres = val;
          },
        ),
      ),
    );
  }

//Este metodo genérico funciona dentro del widget del dropdown para listar nuestros items
  List<DropdownMenuItem<String>> getOpcionesDropdown(List myList) {
    //ahora mismo es una lista de strings
    List<DropdownMenuItem<String>> list = new List();
    myList.forEach((item) {
      list.add(DropdownMenuItem(
        child: Text(item),
        value: item,
      ));
    });
    return list;
  }

  Widget _dropDownGenero(String hintText) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        decoration: kBoxFormDecoration,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(width: 30.0),
            DropdownButton(
                hint: Text(hintText),
                value: generoSeleccionado,
                items: getOpcionesDropdown(kGeneros),
                onChanged: (opt) {
                  setState(() {
                    generoSeleccionado = opt;
                  });
                })
          ],
        ),
      ),
    );
  }
}
