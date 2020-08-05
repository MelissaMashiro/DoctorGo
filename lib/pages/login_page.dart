import 'package:doctor_go/components/FadeAnimation.dart';
import 'package:doctor_go/components/LoginField.dart';
import 'package:doctor_go/components/RoundedButton.dart';
import 'package:doctor_go/constants.dart';
import 'package:doctor_go/pages/registrationStep1_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static String id = 'login_screen';

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
                  style: kBlueTextStyle,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Expanded(
                child: FadeAnimation(
                  1.3,
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
                              backgroundColor: Color(0xFF282F3F),
                              obscureText: false,
                              hintText: "Ingrese su correo electrónico",
                              keyboardType: TextInputType.emailAddress,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            MyLoginField(
                                backgroundColor: Color(0xFF282F3F),
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
                              colour: kColorDoctor,
                            ),
                            SizedBox(height: 20),
                            Text(
                              '¿Olvidaste tu contraseña?',
                              style: kBlueTextStyle,
                            ),
                            SizedBox(
                              height: 100,
                            ),
                            RichText(
                              text: TextSpan(
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 20.0),
                                children: <TextSpan>[
                                  TextSpan(text: '¿No tienes una cuenta? '),
                                  TextSpan(
                                    text: 'Registrate aquí',
                                    style: TextStyle(color: kColorDoctor),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.pushNamed(
                                            context, RegistrationStep1.id);
                                      },
                                  ),
                                ],
                              ),
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
