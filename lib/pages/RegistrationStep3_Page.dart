import 'package:doctor_go/components/RoundedButton.dart';
import 'package:doctor_go/components/StepsHeader.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import 'registrationStep1_page.dart';

class RegistrationStep3 extends StatefulWidget {
  static String id = 'registration_step3_screen';

  @override
  _RegistrationStep3State createState() => _RegistrationStep3State();
}

class _RegistrationStep3State extends State<RegistrationStep3> {
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
                colorTree: kColorDoctor,
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                child: Text(
                  'CUENTA CREADA EXITOSAMENTE!',
                  style: kBlueTextStyle,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 20),
                      RoundedButton(
                        text: Text(
                          'COMPLETA TU PERFIL',
                          style: TextStyle(color: kColorDoctor),
                        ),
                        onPressed: null,
                        colour: Colors.white,
                      ),
                      RoundedButton(
                        text: Text(
                          'CONTINUAR A INICIO',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: null,
                        colour: kColorDoctor,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
