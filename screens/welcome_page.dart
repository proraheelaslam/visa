import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  //const Welcome({Key? key}) : super(key: key);

  Widget button(
      {required String name, required Color color, required Color textColor}) {
    return Container(
        height: 44,
        width: 250,
        child: ElevatedButton(
          onPressed: () {},
          child: Text(name),
          style: ElevatedButton.styleFrom(
              primary: color,
              onPrimary: textColor,
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),
              )),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: Center(child: Image.asset('assets/images/logo.png')),
            ),
          ),
          Expanded(
              child: Container(
            //color: Colors.grey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Welcome to food App',
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Text(
                      'Our food from resturant and',
                    ),
                    Text('make realtime registration')
                  ],
                ),
                button(
                    name: 'Login',
                    color: Colors.green,
                    textColor: Colors.white),
                button(
                    name: 'Sign Up',
                    color: Colors.white,
                    textColor: Colors.green),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
