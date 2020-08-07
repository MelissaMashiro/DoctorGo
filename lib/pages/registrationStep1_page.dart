import 'package:doctor_go/components/RoundedButton.dart';
import 'package:doctor_go/components/StepsHeader.dart';
import 'package:doctor_go/pages/RegistrationStep2_page.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class RegistrationStep1 extends StatefulWidget {
  static String id = 'registration_step1_screen';

  @override
  _RegistrationStep1State createState() => _RegistrationStep1State();
}

class _RegistrationStep1State extends State<RegistrationStep1> {
  //mi globalKey para el Form
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool _autoValidate = false;
  String _usser;
  String _email;
  String _password;

  String validateUsser(String value) {
    //mejorar, que no permita simbolos
    if (value.length < 3)
      return 'Usuario debe ser de minimo 3 caracteres';
    else
      return null;
  }

  String validatePassword(String value) {
    //mejorar, que no permita simbolos
    if (value.length < 5)
      return 'Contraseña debe ser de minimo 5 caracteres';
    else
      return null;
  }

  String validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return 'Digite un email válido';
    else
      return null;
  }

//guardada final de la informacion si todo es correcto
  void _validateInputs() {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      Navigator.pushNamed(context, RegistrationStep2.id);
    } else {
      setState(() {
        _autoValidate = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Return Login'),
      ),
      body: SafeArea(
        child: Container(
          color: Color(0xFF181C28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 15),
                child: StepsHeader(
                  colorOne: kColorDoctor,
                  colorTwo: Color(0xFF282F3F),
                  colorTree: Color(0xFF282F3F),
                ),
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
                      child: Form(
                        autovalidate: false,
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              decoration: kBoxFormDecoration,
                              child: TextFormField(
                                decoration: const InputDecoration(
                                    labelText: 'Nombre Usuario'),
                                keyboardType: TextInputType.text,
                                validator: validateUsser,
                                onSaved: (String val) {
                                  //este metodo solo se ejecutara al yo darle la intruccion al final de la validacion de todo el form
                                  _usser = val;
                                },
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              decoration: kBoxFormDecoration,
                              child: TextFormField(
                                decoration: const InputDecoration(
                                    labelText: 'correo electronico'),
                                keyboardType: TextInputType.emailAddress,
                                validator: validateEmail,
                                onSaved: (String val) {
                                  _email = val;
                                },
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              decoration: kBoxFormDecoration,
                              child: TextFormField(
                                obscureText: true,
                                decoration: const InputDecoration(
                                    labelText: 'contraseña'),
                                keyboardType: TextInputType.emailAddress,
                                validator: validatePassword,
                                onChanged: (value) {
                                  _password = value;
                                },
                              ),
                            ),
                            SizedBox(height: 20),
                            Container(
                              decoration: kBoxFormDecoration,
                              child: TextFormField(
                                obscureText: true,
                                decoration: const InputDecoration(
                                    labelText: 'Confirmar contraseña'),
                                keyboardType: TextInputType.emailAddress,
                                validator: (value) {
                                  if (value != _password) {
                                    return 'Confirmacion de password incorrecta';
                                  } else {
                                    return null;
                                  }
                                },
                                onSaved: (String val) {
                                  _password = val;
                                },
                              ),
                            ),
                            SizedBox(height: 20),
                            RoundedButton(
                              text: Text(
                                'SIGUIENTE',
                                style: TextStyle(color: Colors.white),
                              ),
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, RegistrationStep2.id);
                              },
                              // _validateInputs,
                              colour: kColorDoctor,
                            ),
                          ],
                        ),
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
}
