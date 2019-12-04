import 'package:flutter/material.dart';
import 'third_page.dart';
import 'login_page.dart';

class SecondPage extends StatelessWidget {
  void _navigateToLoginPage(BuildContext context) {
    Navigator.push(
        context, new MaterialPageRoute(builder: (ctxt) => new LoginPage()));
  }

  void _navigateToThirdPage(BuildContext context) {
    Navigator.push(
        context, new MaterialPageRoute(builder: (ctxt) => new ThirdPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Opacity(
          opacity: 1,
          child: Container(
            width: 5,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment(0, 0),
              end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(188, 255, 207, 0.51),
                Color.fromRGBO(188, 255, 207, 0.51)
              ],
            )),
            child: Scaffold(
                backgroundColor: Colors.transparent,
                // appBar: AppBar(title: Text("Getchefnow")),
                body: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Center(
                        child: Image.asset('lib/assets/images/logo.png'),
                      ),
                      Center(
                        child: Image.asset('lib/assets/images/piggy_bank.png'),
                      ),
                      Center(
                        child: Text(
                          "Save Money",
                          style: TextStyle(
                              fontFamily: 'Playfair Display', fontSize: 40),
                        ),
                      ),
                      Center(
                        child: Text(
                          "An Adaptable Foundation",
                          style: TextStyle(fontFamily: 'Roboto', fontSize: 24),
                        ),
                      ),
                      Center(
                        child: Text(
                          "Ut labore et dolore roipi mana aliqua. Enim adeop minim veeniam nostruklad",
                          style: TextStyle(fontFamily: 'Roboto', fontSize: 15),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          FlatButton(
                            child: Text("SKIP"),
                            color: Colors.transparent,
                            onPressed: () {
                              _navigateToLoginPage(context);
                            },
                          ),
                          Container(
                            width: 155,
                            height: 48,
                            child: RaisedButton(
                              child: Text("NEXT"),
                              elevation: 3,
                              color: Color.fromRGBO(235, 235, 235, 1),
                              onPressed: () {
                                _navigateToThirdPage(context);
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
          )),
    );
  }
}
