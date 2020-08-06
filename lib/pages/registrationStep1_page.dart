import 'package:doctor_go/components/CircleButton.dart';
import 'package:doctor_go/components/LoginField.dart';
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
              SizedBox(
                height: 20,
              ),
              StepsHeader(
                colorOne: kColorDoctor,
                colorTwo: Color(0xFF282F3F),
                colorTree: Color(0xFF282F3F),
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
                      child: Form(
                        autovalidate: true,
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
                                decoration:
                                    const InputDecoration(labelText: 'Usuario'),
                                keyboardType: TextInputType.text,
                                validator: (value) {
                                  if (value.length < 5) {
                                    return 'Digite un nombre de mas de 4 caracteres';
                                  }
                                },
                                onChanged: null,
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
                                validator: (value) {
                                  if (value.length < 2) {
                                    // falta condicion
                                    return 'Este correo no parece real';
                                  }
                                },
                                onChanged: null,
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
                                validator: (value) {
                                  if (value.length < 2) {
                                    //falta condicion
                                    // falta condicion
                                    return 'Este correo no parece real';
                                  }
                                },
                                onChanged: null,
                              ),
                            ),
                            SizedBox(height: 20),
                            Container(
                              decoration: kBoxFormDecoration,
                              child: TextFormField(
                                decoration: const InputDecoration(
                                    labelText: 'Confirmar contraseña'),
                                keyboardType: TextInputType.emailAddress,
                                validator: (value) {
                                  if (value.length < 2) {
                                    //falta condicion si es igual a la anterior
                                    // falta condicion
                                    return 'Este correo no parece real';
                                  }
                                },
                                onChanged: null,
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
