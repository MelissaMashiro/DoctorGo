import 'package:doctor_go/components/CircleButton.dart';
import 'package:doctor_go/components/RoundedButton.dart';
import 'package:doctor_go/components/StepsHeader.dart';
import 'package:doctor_go/pages/registrationStep1_page.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import 'RegistrationStep3.dart';

class RegistrationStep2 extends StatefulWidget {
  static String id = 'registration_step2_screen';

  @override
  _RegistrationStep2State createState() => _RegistrationStep2State();
}

class _RegistrationStep2State extends State<RegistrationStep2> {
//controller para el input del calendario
  String _fecha = '';
  TextEditingController _inputFieldDateControlleer =
      new TextEditingController();

//cosas para el dropdown
  String generoSeleccionado; //valor por defecto
  String tipoSangreSeleccionado;
  String estadoCivilSeleccionado;
  String paisSeleccionado;
  String departamentoSeleccionado;
  String ciudadSeleccionado;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: SafeArea(
        child: Container(
          color: Color(0xFF181C28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              StepsHeader(
                colorOne: kColorDoctor,
                colorTwo: kColorDoctor,
                colorTree: Color(0xFF282F3F),
                onTapOne: () {
                  Navigator.pushNamed(context, RegistrationStep1.id);
                },
                onTapTree: () {
                  Navigator.pushNamed(context, RegistrationStep3.id);
                },
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  'Creación de cuenta',
                  style: kBlueTextStyle,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 30,
                          ),
                          _nombreInput('Nombre'),
                          SizedBox(
                            height: 20,
                          ),
                          _apellidoInput('Apellido'),
                          SizedBox(
                            height: 20,
                          ),
                          _ccInput('Cédula ciudadanía'),
                          SizedBox(height: 20),
                          _crearFecha(context),
                          SizedBox(height: 20),
                          _dropDownGenero('seleccione un género'),
                          SizedBox(height: 20),
                          _dropDownTipoSangre('seleccione tipo de sangre'),
                          SizedBox(height: 20),
                          _dropDownEstadoCivil('seleccione estado civil'),
                          SizedBox(height: 20),
                          _numberInput('Digite su numero de celular'),
                          SizedBox(height: 20),
                          _dropDownPais('seleccione pais'),
                          SizedBox(height: 20),
                          _dropDownDepartamento('seleccione departamento'),
                          SizedBox(height: 20),
                          _dropDownCiudad('Ciudad'),
                          SizedBox(height: 20),
                          RoundedButton(
                            text: Text(
                              'SIGUIENTE',
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, RegistrationStep3.id);
                            },
                            colour: kColorDoctor,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _nombreInput(String hintText) {
    return Container(
      decoration: kBoxFormDecoration,
      child: TextField(
        style: TextStyle(color: Colors.grey),
        cursorColor: Colors.white,
        autofocus: false,
        textCapitalization: TextCapitalization.sentences,
        decoration: InputDecoration(
          hintStyle: TextStyle(color: Colors.grey),
          hintText: hintText,
        ),
        onChanged: (valor) {},
      ),
    );
  }

  Widget _apellidoInput(String hintText) {
    return Container(
      decoration: kBoxFormDecoration,
      child: TextField(
        style: TextStyle(color: Colors.grey),
        cursorColor: Colors.white,
        autofocus: false,
        textCapitalization: TextCapitalization.sentences,
        decoration: InputDecoration(
          hintStyle: TextStyle(color: Colors.grey),
          hintText: hintText,
        ),
        onChanged: (valor) {},
      ),
    );
  }

  Widget _ccInput(String hintText) {
    return Container(
      decoration: kBoxFormDecoration,
      child: TextField(
        keyboardType: TextInputType.number,
        style: TextStyle(color: Colors.grey),
        cursorColor: Colors.white,
        autofocus: false,
        decoration: InputDecoration(
          hintStyle: TextStyle(color: Colors.grey),
          hintText: hintText,
        ),
        onChanged: (valor) {},
      ),
    );
  }

  Widget _numberInput(String hintText) {
    return Container(
      decoration: kBoxFormDecoration,
      child: TextField(
        keyboardType: TextInputType.phone,
        style: TextStyle(color: Colors.grey),
        cursorColor: Colors.white,
        autofocus: false,
        decoration: InputDecoration(
          hintStyle: TextStyle(color: Colors.grey),
          hintText: hintText,
        ),
        onChanged: (valor) {},
      ),
    );
  }

  Widget _crearFecha(BuildContext context) {
    return Container(
      decoration: kBoxFormDecoration,
      child: TextField(
        style: TextStyle(color: Colors.grey),
        cursorColor: Colors.white,
        autofocus: false,
        enableInteractiveSelection: false,
        controller: _inputFieldDateControlleer,
        decoration: InputDecoration(
            hintText: 'Fecha de nacimiento',
            helperText: 'Fecha de nacimiento',
            suffixIcon: Icon(Icons.perm_contact_calendar),
            icon: Icon(Icons.calendar_today)),
        onTap: () {
          //al tocarlo se habra el selector de fecha

          FocusScope.of(context).requestFocus(new FocusNode());
          _selectDate(context);
        },
      ),
    );
  }

  _selectDate(BuildContext context) async {
    //regresara un future

    DateTime picked = await showDatePicker(
      //devuelve u future, por sta razon, le puse async al nombre del metodo
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(2018),
      lastDate: new DateTime(2025),
      locale: Locale('es',
          'ES'), //idiomas(español españa y español normal)IMPORTANTE: para hacer esto,y que todo funcione, debo agregar una nueva dependencia llamada flutter_localizations, en el puspect.ymal.
      //Ademas de esto, tengo que hacer 2 confiuraciones en el material app: 1. agregar el localizationsDelegate (import-lo pongo en el main.dart), y 2. los lenguajes agregados/localizationdelegates y supportedlocales(en main.dart tambien, donde dice materialApp()) (esto loe ncuentro en internationalizing flutter apps )
    );
    if (picked != null) {
      //si el pick es dif de null(que selecciono algo), entices colocare el valor de la fecha a la caja de texto del mismo
      setState(() {
        _fecha = picked.toString();
        _inputFieldDateControlleer.text = _fecha;
      });
    }
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
    return Container(
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
    );
  }

  Widget _dropDownTipoSangre(String hintText) {
    return Container(
      decoration: kBoxFormDecoration,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(width: 30.0),
          DropdownButton(
              hint: Text(hintText),
              value: tipoSangreSeleccionado,
              items: getOpcionesDropdown(kTiposSangre),
              onChanged: (opt) {
                setState(() {
                  tipoSangreSeleccionado = opt;
                });
              })
        ],
      ),
    );
  }

  Widget _dropDownEstadoCivil(String hintText) {
    return Container(
      decoration: kBoxFormDecoration,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(width: 30.0),
          DropdownButton(
              hint: Text(hintText),
              value: estadoCivilSeleccionado,
              items: getOpcionesDropdown(kEstadoCivil),
              onChanged: (opt) {
                setState(() {
                  estadoCivilSeleccionado = opt;
                });
              })
        ],
      ),
    );
  }

  Widget _dropDownPais(String hintText) {
    return Container(
      decoration: kBoxFormDecoration,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(width: 30.0),
          DropdownButton(
              hint: Text(hintText),
              value: paisSeleccionado,
              items: getOpcionesDropdown(kPaises),
              onChanged: (opt) {
                setState(() {
                  paisSeleccionado = opt;
                });
              })
        ],
      ),
    );
  }

  Widget _dropDownDepartamento(String hintText) {
    return Container(
      decoration: kBoxFormDecoration,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(width: 30.0),
          DropdownButton(
              hint: Text(hintText),
              value: departamentoSeleccionado,
              items: getOpcionesDropdown(kDepartamentos),
              onChanged: (opt) {
                setState(() {
                  departamentoSeleccionado = opt;
                });
              })
        ],
      ),
    );
  }

  Widget _dropDownCiudad(String hintText) {
    return Container(
      decoration: kBoxFormDecoration,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(width: 30.0),
          DropdownButton(
              hint: Text(hintText),
              value: ciudadSeleccionado,
              items: getOpcionesDropdown(kCiudades),
              onChanged: (opt) {
                setState(() {
                  ciudadSeleccionado = opt;
                });
              })
        ],
      ),
    );
  }
}
