import 'package:doctor_go/components/RoundedButton.dart';
import 'package:doctor_go/constants.dart';
import 'package:flutter/material.dart';

import 'components/FadeAnimation.dart';
import 'components/LoginField.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              gradient:
                  LinearGradient(colors: [Color(0xFFC7CADC), Colors.white])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Image.asset(
                'images/doctorLogo.png',
                height: 72,
              ),
              SizedBox(
                height: 25,
              ),
              Center(
                child: Text(
                  'Tu Médico en casa',
                  style: kBlueText,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Expanded(
                child: FadeAnimation(
                  1.9,
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black,
                            blurRadius: 18,
                            offset: Offset(0, 4))
                      ],
                      color: Color(0xFF181C28),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35),
                      ),
                    ),
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
                              hintText: "Ingrese su email",
                              keyboardType: TextInputType.emailAddress,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            MyLoginField(
                                hintText: "Ingrese su contraseña",
                                obscureText: true,
                                icon: Icons.remove_red_eye),
                            SizedBox(height: 20),
                            RoundedButton(
                              text: Text(
                                'INICIAR SESIÓN',
                                style: TextStyle(color: Colors.white),
                              ),
                              onPressed: null,
                              colour: kBlueDoctor,
                            ),
                            SizedBox(height: 20),
                            Text(
                              '¿Olvidaste tu contraseña?',
                              style: kBlueText,
                            ),
                            SizedBox(
                              height: 100,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text('¿No tienes cuenta aún?',
                                    style: TextStyle(
                                      color: Colors.white,
                                    )),
                                SizedBox(
                                  width: 7,
                                ),
                                Expanded(
                                  child: Text(
                                    'Registrate Aquí',
                                    style: kBlueText,
                                  ),
                                )
                              ],
                            )
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
