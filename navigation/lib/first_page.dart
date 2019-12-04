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
              begin: Alignment(0, -3),
              end: Alignment.bottomCenter,
              colors: [
                //  Screen1: #B8C65B, #DCDCDC36 .... #B8C65B, #DCDCDC36
                // Screen2: #83B692B8, #40CA67B8
                // Color(0xFFbcffcf),
                // Color.fromARGB(a, r, g, b)
                // Color(0xffbcffcf),
                // Color.fromARGB(125, 188, 255, 207),
                // Color.fromRGBO(188, 255, 207, 0.51),
                Color(0xffB8C65B),
                Color(0xffDCDCDC),
                // Color.fromRGBO(188, 255, 207, 0.51),
                // Color.fromRGBO(220, 220, 220, .21),
                // Color(0xffbcffcf),
                // Color(0xff40CA67B8)
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
                          "GetChefNow provides a professional chef to come to your place and cook multiple servings of healthy, nutritious meals.",
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
                          RaisedButton(
                            child: Text("NEXT"),
                            color: Colors.blue,
                            onPressed: () {
                              _navigateToSecondPage(context);
                            },
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
