import 'package:flutter/material.dart';

class Average extends StatefulWidget {
  @override
  _AverageState createState() => _AverageState();
}

class _AverageState extends State<Average> {
  final myController1 = TextEditingController();
  final myController2 = TextEditingController();
  final myController3 = TextEditingController();
  final myController4 = TextEditingController();
  final myController5 = TextEditingController();
  final myController6 = TextEditingController();
  final myController7 = TextEditingController();
  final myController8 = TextEditingController();

  double average = 0.0;
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Average of CGPI'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0,0,12,0),
                          child: Column(
                  children: [
                    SizedBox(
                          width: 150,
                          child: TextField(
                              controller: myController1,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                // border: OutlineInputBorder(),
                                hintText: 'SEM 1 CGPI',
                              )

                          ),
                      ),

                    SizedBox(
                      width: 150.0,
                      child: TextField(
                            keyboardType: TextInputType.number,
                            controller: myController2,
                            decoration: InputDecoration(
                              //border: OutlineInputBorder(),
                              hintText: 'SEM 2 CGPI',
                            )),
                    ),
                    SizedBox(
                      width: 150.0,
                      child: TextField(
                            keyboardType: TextInputType.number,
                            controller: myController3,
                            decoration: InputDecoration(
                              //border: OutlineInputBorder(),
                              hintText: 'SEM 3 CGPI',
                            )),
                    ),
                    SizedBox(
                      width: 150.0,
                      child: TextField(
                            keyboardType: TextInputType.number,
                            controller: myController4,
                            decoration: InputDecoration(
                              // border: OutlineInputBorder(),
                              hintText: 'SEM 4 CGPI',
                            )),
                    ),
                  ],
                ),
                        ),
                Column(
                  children: [
                    SizedBox(
                      width: 150.0,
                      child: TextField(
                          keyboardType: TextInputType.number,
                          controller: myController5,
                          decoration: InputDecoration(
                            // border: OutlineInputBorder(),
                            hintText: 'SEM 5 CGPI',
                          )),
                    ),
                    SizedBox(
                      width: 150.0,
                      child: TextField(
                          keyboardType: TextInputType.number,
                          controller: myController6,
                          decoration: InputDecoration(
                            // border: OutlineInputBorder(),
                            hintText: 'SEM 6 CGPI',
                          )),
                    ),
                    SizedBox(
                      width: 150.0,
                      child: TextField(
                          keyboardType: TextInputType.number,
                          controller: myController7,
                          decoration: InputDecoration(
                            // border: OutlineInputBorder(),
                            hintText: 'SEM 7 CGPI',
                          )),
                    ),
                    SizedBox(
                      width: 150.0,
                      child: TextField(
                          keyboardType: TextInputType.number,
                          controller: myController8,
                          decoration: InputDecoration(
                            // border: OutlineInputBorder(),
                            hintText: 'SEM 8 CGPI',
                          )),
                    ),
                  ],
                ),
              ]),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                  child: Text(
                    'Average CGPI is: ',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),

            Padding(
              padding: const EdgeInsets.fromLTRB(0,15,0,0),
              child: Text(
                '$average',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0,10,0,0),
              child: RaisedButton(
                onPressed: () {
                  setState(() {
                    count = 0;
                    if(myController1.text.isEmpty){
                      count++;
                      myController1.text = '0';
                    }
                    else{count=0;}
                    // myController2.text.isEmpty?count++:count=0;
                    // myController3.text.isEmpty?count++:count=0;
                    // myController4.text.isEmpty?count++:count=0;
                    // myController5.text.isEmpty?count++:count=0;
                    // myController6.text.isEmpty?count++:count=0;
                    // myController7.text.isEmpty?count++:count=0;
                    // myController8.text.isEmpty?count++:count=0;

                    average = (double.parse(myController1.text) +
                    double.parse(myController2.text) +
                    double.parse(myController3.text) +
                    double.parse(myController4.text) +
                    double.parse(myController5.text) +
                    double.parse(myController6.text) +
                    double.parse(myController7.text) +
                    double.parse(myController8.text)) / (8-count);

                    print('$count');

                  });
                },
                child: Text('Calculate'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
