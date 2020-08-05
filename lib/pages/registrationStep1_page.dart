import 'package:doctor_go/components/CircleButton.dart';
import 'package:doctor_go/components/LoginField.dart';
import 'package:doctor_go/components/RoundedButton.dart';
import 'package:doctor_go/components/StepsHeader.dart';
import 'package:doctor_go/pages/RegistrationStep2.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class RegistrationStep1 extends StatefulWidget {
  static String id = 'registration_step1_screen';

  @override
  _RegistrationStep1State createState() => _RegistrationStep1State();
}

class _RegistrationStep1State extends State<RegistrationStep1> {
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
                onTapTwo: () {
                  Navigator.pushNamed(context, RegistrationStep2.id);
                },
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            height: 30,
                          ),
                          MyLoginField(
                            backgroundColor: Color(0xFFF0F0F0),
                            obscureText: false,
                            hintText: "Usuario",
                            keyboardType: TextInputType.emailAddress,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          MyLoginField(
                            backgroundColor: Color(0xFFF0F0F0),
                            obscureText: false,
                            hintText: "Correo",
                            keyboardType: TextInputType.emailAddress,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          MyLoginField(
                            backgroundColor: Color(0xFFF0F0F0),
                            hintText: "Contraseña",
                            obscureText: true,
                          ),
                          SizedBox(height: 20),
                          MyLoginField(
                            backgroundColor: Color(0xFFF0F0F0),
                            hintText: "Confirmar contraseña",
                            obscureText: true,
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
