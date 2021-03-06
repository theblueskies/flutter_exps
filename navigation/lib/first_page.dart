import 'package:flutter/material.dart';
import 'second_page.dart';
import 'login_page.dart';

class FirstPage extends StatelessWidget {
  void _navigateToLoginPage(BuildContext context) {
    Navigator.push(
        context, new MaterialPageRoute(builder: (ctxt) => new LoginPage()));
  }

  void _navigateToSecondPage(BuildContext context) {
    Navigator.push(
        context, new MaterialPageRoute(builder: (ctxt) => new SecondPage()));
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
                Color.fromRGBO(255, 253, 183, 1),
                Color.fromRGBO(255, 255, 255, 1),
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
                        child: Image.asset(
                            'lib/assets/images/undraw_Chef_cu0r.png'),
                      ),
                      Center(
                        child: Text(
                          "Pro Chefs",
                          style: TextStyle(
                              fontFamily: 'Playfair-Display', fontSize: 54),
                        ),
                      ),
                      Center(
                        child: Text(
                          "An Adaptable Foundation",
                          style: TextStyle(fontFamily: 'Roboto', fontSize: 24),
                        ),
                      ),
                      Container(
                        width: 272,
                        height: 88,
                        margin: const EdgeInsets.only(left: 40.0, right: 20.0),
                        child: Center(
                          child: Text(
                            "GetChefNow provides a professional chef to come to your place and cook multiple servings of healthy, nutritious meals.",
                            style:
                                TextStyle(fontFamily: 'Roboto', fontSize: 15),
                          ),
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
                                _navigateToSecondPage(context);
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
