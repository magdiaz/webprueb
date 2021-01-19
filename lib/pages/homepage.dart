
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web/authentication_service.dart';


class HomePage extends StatelessWidget {
  //const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("home"),
            RaisedButton(
              onPressed: (){
                context.read<AuthenticationService>().signOut();
              },
              child: Text("Sign Out"),
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}