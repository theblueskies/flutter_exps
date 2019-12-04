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
              colors: [Color(0xff7EB4E5), Color(0xff0084FF)],
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
                          "Let's get back to eating right, eating home cooked meals. Let's take back our evenings.",
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
                          FlatButton(
                            child: Text("NEXT"),
                            color: Colors.blue,
                            onPressed: () {
                              _navigateToLoginPage(context);
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
