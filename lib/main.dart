import 'package:flutter/material.dart';
import 'package:sign_up_challenges/colors.dart';
import 'package:sign_up_challenges/theme.dart';

import 'login.dart';

void main() => runApp(SignUp());

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeDefinition.theme, initialRoute: '', routes: {
      '': (context) => CreateAccount(),
      '/login': (context) => LoginWidget()
    });
  }
}

class CreateAccount extends StatefulWidget {
  @override
  _CreateAccount createState() => _CreateAccount();
}

class _CreateAccount extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: LayoutBuilder(builder:
            (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
              child: ConstrainedBox(
            constraints:
                BoxConstraints(minHeight: viewportConstraints.maxHeight),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 150),
                  Text('Create Account',
                      style: Theme.of(context).textTheme.headline),
                  SizedBox(height: 20),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          labelStyle: TextStyle(
                              color: Colors.white38,
                              fontWeight: FontWeight.bold),
                          filled: true,
                          fillColor: Colors.black26,
                          labelText: 'EMAIL',
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelStyle: TextStyle(
                              color: Colors.white38,
                              fontWeight: FontWeight.bold),
                          filled: true,
                          fillColor: Colors.black26,
                          labelText: 'PASSWORD',
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                      )),
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width * 0.7,
                    margin: EdgeInsets.only(top: 40),
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                      elevation: 10,
                      child: Text('REGISTER',
                          style: Theme.of(context).textTheme.button),
                      onPressed: () {
                        Navigator.of(context).pushNamed('/login');
                      },
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    margin: EdgeInsets.only(bottom: 100),
                    child: FlatButton(
                      onPressed: () {},
                      child: Text('or sign in with facebook',
                          style: Theme.of(context).textTheme.caption),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomPaint(
                            size: Size(
                                MediaQuery.of(context).size.width / 6, 0.0),
                            painter: DrawCircle(
                              Colors.red,
                              40,
                              Offset(0.0, 0.0),
                            ),
                          ),
                          CustomPaint(
                            size: Size(
                                MediaQuery.of(context).size.width / 6, 0.0),
                            painter: DrawCircle(
                              swatch2,
                              30,
                              Offset(10.0, 40.0),
                            ),
                          ),
                          CustomPaint(
                            size: Size(
                                MediaQuery.of(context).size.width / 6, 0.0),
                            painter: DrawCircle(
                              swatch6,
                              20,
                              Offset(10.0, 20.0),
                            ),
                          ),
                          CustomPaint(
                              size: Size(
                                  MediaQuery.of(context).size.width / 6, 0.0),
                              painter: DrawCircle(
                                Colors.red,
                                40,
                                Offset(10.0, 60.0),
                              )),
                          CustomPaint(
                            size: Size(
                                MediaQuery.of(context).size.width / 6, 0.0),
                            painter: DrawCircle(
                              swatch2,
                              30,
                              Offset(20.0, 10.0),
                            ),
                          ),
                          CustomPaint(
                            size: Size(
                                MediaQuery.of(context).size.width / 6, 0.0),
                            painter: DrawCircle(
                              swatch6,
                              40,
                              Offset(60.0, 0.0),
                            ),
                          ),
                        ]),
                  )
                ]),
          ));
        }));
  }
}
