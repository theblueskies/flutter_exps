import 'package:flutter/material.dart';
import 'login_page.dart';

class ThirdPage extends StatelessWidget {
  void _navigateToLoginPage(BuildContext context) {
    Navigator.push(
        context, new MaterialPageRoute(builder: (ctxt) => new LoginPage()));
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
                Color.fromRGBO(153, 206, 255, 0.56),
                Color.fromRGBO(173, 215, 255, 0.56)
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
                        child:
                            Image.asset('lib/assets/images/special_event.png'),
                      ),
                      Center(
                        child: Text(
                          "Eat Healthy",
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
                            "Let's get back to eating right, eating home cooked meals. Let's take back our evenings.",
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
                                _navigateToLoginPage(context);
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
