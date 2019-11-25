import 'package:flutter/material.dart';
import 'second_page.dart';

class FirstPage extends StatelessWidget {
  void _navigateToSecondPage(BuildContext context) {
    Navigator.push(
        context, new MaterialPageRoute(builder: (ctxt) => new SecondPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Getchefnow")),
        body: Center(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(child: Image.asset('lib/assets/images/logo.png')),
                ],
              ),
              FlatButton(
                child: Text("Go to second page"),
                color: Colors.blue,
                onPressed: () {
                  _navigateToSecondPage(context);
                },
              ),
            ],
          ),
        ));
  }
}
