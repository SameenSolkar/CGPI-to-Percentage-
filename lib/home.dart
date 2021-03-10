import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String message = '';
  double percentage;
  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(''),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: myController,
                  // onSubmitted: (String val){
                  //      setState(() {
                  //        double d = double.parse(val);
                  //        percentage = d*7.1+11;
                  //        message = percentage.toString();
                  //
                  //      });
                  //      },
                  obscureText: false,
                  decoration: InputDecoration(
                    //border: OutlineInputBorder(),
                    labelText: 'CGPI',
                    hintText: 'Enter CGPI',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 12.0, 0, 12.0),
                child: Text(
                  '$message %',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    double d = double.parse(myController.text);
                    percentage = d * 7.1 + 11;
                    message = percentage.toString();
                  });
                },
                child: Text('Convert'),
              )
            ],
          ),
        ),
            floatingActionButton: FloatingActionButton(
              onPressed: (){
                Navigator.pushNamed(context, '/average');
              },

              child: Text(
                'Avg'
              ),

        ),
        // This trailing comma makes auto-formatting nicer for build methods.
      );
    }
  }

