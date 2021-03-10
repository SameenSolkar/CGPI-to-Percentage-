// import 'dart:ffi';
import 'dart:math';
import 'package:flutter/material.dart';
void main() {
  runApp(Home());

}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double message = 0;
  double percentage;
  final myController = TextEditingController();

  final myController1 = TextEditingController();
  final myController2 = TextEditingController();
  final myController3 = TextEditingController();
  final myController4 = TextEditingController();
  final myController5 = TextEditingController();
  final myController6 = TextEditingController();
  final myController7 = TextEditingController();
  final myController8 = TextEditingController();

  double average = 0.0;
  double avg_percentage = 0.0;
  String val = '0.0';
  String val2 = '0.0';
  String val3 = '0.0';
  int count = 0;

  double _percentage(double d){
    percentage = d * 7.1 + 11;
    return percentage;
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('CGPI - %'),
            bottom: TabBar(
              labelStyle: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
              ),
              tabs: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text('CGPI - %'),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text('CGPI Avg'),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: myController,
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
                      val2 + '%',
                      style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  RaisedButton(
                    onPressed: () {
                      setState(() {
                        message = _percentage(double.parse(myController.text));
                        val2 = message.toStringAsPrecision(5);
                      });
                    },
                    child: Text('Convert'),
                  )
                ],
              ),

              Column(
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
                          val3,
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                        child: Text(
                          'Average Percentage is: ',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(0,15,0,0),
                        child: Text(
                          val+'%',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
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

                               if(myController2.text.isEmpty){
                                count++;
                                myController2.text = '0';
                              }

                               if(myController3.text.isEmpty){
                                count++;
                                myController3.text = '0';
                              }

                               if(myController4.text.isEmpty){
                                count++;
                                myController4.text = '0';
                              }


                               if(myController5.text.isEmpty){
                                count++;
                                myController5.text = '0';
                              }

                               if(myController6.text.isEmpty){
                                count++;
                                myController6.text = '0';
                              }
                               if(myController7.text.isEmpty){
                                count++;
                                myController7.text = '0';
                              }
                               if(myController8.text.isEmpty){
                                count++;
                                myController8.text = '0';
                              }
                              else{count=count;}

                              print('$count');

                              average = (double.parse(myController1.text) +
                                  double.parse(myController2.text) +
                                  double.parse(myController3.text) +
                                  double.parse(myController4.text) +
                                  double.parse(myController5.text) +
                                  double.parse(myController6.text) +
                                  double.parse(myController7.text) +
                                  double.parse(myController8.text)) / (8-count);

                              val3 = average.toStringAsPrecision(4);

                              avg_percentage= _percentage(average);
                              val = avg_percentage.toStringAsPrecision(4);
                              average = 0;
                              avg_percentage = 0;
                            });
                          },
                          child: Text('Calculate'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10.0, 0, 0),
                        child: RaisedButton(
                          onPressed:(){
                            count = 0;
                            average = 0;
                            avg_percentage = 0;
                            myController1.clear();
                            myController2.clear();
                            myController3.clear();
                            myController4.clear();
                            myController5.clear();
                            myController6.clear();
                            myController7.clear();
                            myController8.clear();

                          },
                          child: Text('Clear'),),
                      )
                    ],
                  ),

                ],
              ),
            ],
          ),
        )
        )
    );
  }
}
