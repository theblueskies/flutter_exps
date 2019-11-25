import 'package:flutter/material.dart';
import 'second_page.dart';

class FirstPage extends StatelessWidget {
  void _navigateToSecondPage(BuildContext context) {
    Navigator.push(
        context, new MaterialPageRoute(builder: (ctxt) => new SecondPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Opacity(
        opacity: 1,
        child: Container(
          width: 5,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment(0, 0),
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(184, 198, 91, 1),
              Color.fromRGBO(220, 220, 220, .21),
            ],
          )),
          child: Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(title: Text("Getchefnow")),
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Center(
                      child: Image.asset('lib/assets/images/logo.png'),
                    ),
                    Center(
                      child:
                          Image.asset('lib/assets/images/undraw_Chef_cu0r.png'),
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
                          color: Colors.blue,
                          onPressed: () {
                            _navigateToSecondPage(context);
                          },
                        ),
                        FlatButton(
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
        ));
  }
}
