import 'package:flutter/material.dart';

void main() {
  return runApp(Calculator());
}

String input = '', value = '', resultFinal= '';
var value1, value2, result;
int  presskey = 0, pressequal= 0, operator = 0, activity= 0;
double dresult = 0;

class Calculator extends StatefulWidget {
  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  //const Calculator({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

        theme: ThemeData(fontFamily: 'Roboto'),
        home: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Color(0xff26ba7e),
            title: Text(
              'Calculator',
              style: TextStyle(
                fontSize: 36.0,
              ),
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.end,

            //color: Colors.black,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,

                  children: [

                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: <Widget>[
                        Text(input, style: TextStyle(fontSize: 38.00, color: Colors.white),),
                        Text('$resultFinal', style: TextStyle(fontSize: 38.00, color: Colors.white),),


                      ],
                    ),
                  ],
                      ),
                    ),

              Expanded(
                flex: 1,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: InkWell(

                          onTap: (){

                          setState(() {
                            if(input.length == 16){
                              input = '';
                              value = '';
                              operator = 0;
                              pressequal = 0;
                              presskey = 0;
                              resultFinal = '';
                              value2 = null;
                              value1 =null;
                            }

                            if(pressequal == 1 && value2 != null){
                              input = '';
                              value = '';
                              operator = 0;
                              pressequal = 0;
                              presskey = 0;
                              resultFinal = '';
                              value2 = null;
                            }

                            presskey = 1;
                            input = input + '1';
                            value = value + '1';
                            print('input is $input');
                            print('value is $value');
                          });

                          },

                          child: Container(
                            child: Text(
                              '1',
                              style:
                                  TextStyle(fontSize: 36.00, color: Colors.white),
                            ),
                            color: Colors.white10,
                            //margin: 5,
                            alignment: Alignment.center,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(3.0),
                        child: InkWell(
                          onTap: (){

                            setState(() {
                              if(input.length == 16){
                                input = '';
                                value = '';
                                operator = 0;
                                pressequal = 0;
                                presskey = 0;
                                resultFinal = '';
                                value2 = null;
                                value1 =null;
                              }

                              if(pressequal == 1 && value2 != null){
                                input = '';
                                value = '';
                                operator = 0;
                                pressequal = 0;
                                presskey = 0;
                                resultFinal = '';
                                value2 = null;
                              }

                              presskey = 1;
                              input = input + '2';
                              value = value + '2';
                              print('input is $input');
                              print('value is $value');
                            });

                          },
                          child: Container(
                            child: Text(
                              '2',
                              style:
                                  TextStyle(fontSize: 36.00, color: Colors.white),
                            ),
                            color: Colors.white10,
                            alignment: Alignment.center,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: InkWell(
                          onTap: (){

                            setState(() {
                              if(input.length == 16){
                                input = '';
                                value = '';
                                operator = 0;
                                pressequal = 0;
                                presskey = 0;
                                resultFinal = '';
                                value2 = null;
                                value1 =null;
                              }

                              if(pressequal == 1 && value2 != null){
                                input = '';
                                value = '';
                                operator = 0;
                                pressequal = 0;
                                presskey = 0;
                                resultFinal = '';
                                value2 = null;
                              }

                              presskey = 1;
                              input = input + '3';
                              value = value + '3';
                              print('input is $input');
                              print('value is $value');
                            });

                          },
                          child: Container(
                            child: Text(
                              '3',
                              style:
                                  TextStyle(fontSize: 36.00, color: Colors.white),
                            ),
                            color: Colors.white10,
                            alignment: Alignment.center,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(3.0),
                        child: InkWell(

                          onTap: (){

                            activity = 1;
                            setState(() {
                              if(input.length == 16){
                                input = '';
                                value = '';
                                operator = 0;
                                pressequal = 0;
                                presskey = 0;
                                resultFinal = '';
                                value2 = null;
                                value1 =null;
                              }

                              if(pressequal == 1 && value2 != null){
                                input = '';
                                value = '';
                                operator = 0;
                                pressequal = 0;
                                presskey = 0;
                                resultFinal = '';
                                value2 = null;
                              }

                              if(presskey == 1 && operator == 0){
                                input = input + '+';
                                value1 = int.parse(value);
                                operator = operator + 1;
                                value = '';
                                print('value = $value');

                                print('value1 = $value1');
                              }

                            });
                          },

                          child: Container(
                            child: Text(
                              '+',
                              style:
                                  TextStyle(fontSize: 28.00, color: Color(0xff26ba7e)),
                            ),
                            color: Colors.white10,
                            alignment: Alignment.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: InkWell(
                          onTap: (){

                            setState(() {
                              if(input.length == 16){
                                input = '';
                                value = '';
                                operator = 0;
                                pressequal = 0;
                                presskey = 0;
                                resultFinal = '';
                                value2 = null;
                                value1 =null;
                              }

                              if(pressequal == 1 && value2 != null){
                                input = '';
                                value = '';
                                operator = 0;
                                pressequal = 0;
                                presskey = 0;
                                resultFinal = '';
                                value2 = null;
                              }

                              presskey = 1;
                              input = input + '4';
                              value = value + '4';
                              print('input is $input');
                              print('value is $value');
                            });

                          },
                          child: Container(
                            child: Text(
                              '4',
                              style:
                                  TextStyle(fontSize: 36.00, color: Colors.white),
                            ),
                            color: Colors.white10,
                            alignment: Alignment.center,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: InkWell(
                          onTap: (){

                            setState(() {
                              if(input.length == 16){
                                input = '';
                                value = '';
                                operator = 0;
                                pressequal = 0;
                                presskey = 0;
                                resultFinal = '';
                                value2 = null;
                                value1 =null;
                              }

                              if(pressequal == 1 && value2 != null){
                                input = '';
                                value = '';
                                operator = 0;
                                pressequal = 0;
                                presskey = 0;
                                resultFinal = '';
                                value2 = null;
                              }

                              presskey = 1;
                              input = input + '5';
                              value = value + '5';
                              print('input is $input');
                              print('value is $value');
                            });

                          },
                          child: Container(
                            child: Text(
                              '5',
                              style:
                                  TextStyle(fontSize: 36.00, color: Colors.white),
                            ),
                            color: Colors.white10,
                            alignment: Alignment.center,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: InkWell(
                          onTap: (){

                            setState(() {
                              if(input.length == 16){
                                input = '';
                                value = '';
                                operator = 0;
                                pressequal = 0;
                                presskey = 0;
                                resultFinal = '';
                                value2 = null;
                                value1 =null;
                              }

                              if(pressequal == 1 && value2 != null){
                                input = '';
                                value = '';
                                operator = 0;
                                pressequal = 0;
                                presskey = 0;
                                resultFinal = '';
                                value2 = null;
                              }

                              presskey = 1;
                              input = input + '6';
                              value = value + '6';
                              print('input is $input');
                              print('value is $value');
                            });

                          },
                          child: Container(
                            child: Text(
                              '6',
                              style:
                                  TextStyle(fontSize: 36.00, color: Colors.white),
                            ),
                            color: Colors.white10,
                            alignment: Alignment.center,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: InkWell(
                          onTap: (){
                            setState(() {
                              if(input.length == 16){
                                input = '';
                                value = '';
                                operator = 0;
                                pressequal = 0;
                                presskey = 0;
                                resultFinal = '';
                                value2 = null;
                                value1 =null;
                              }

                              activity = 2;
                              if(pressequal == 1 && value2 != null){
                                input = '';
                                value = '';
                                operator = 0;
                                pressequal = 0;
                                presskey = 0;
                                resultFinal = '';
                                value2 = null;
                              }

                              if(presskey == 1 && operator == 0){
                                input = input + '-';
                                value1 = int.parse(value);
                                operator = operator + 1;
                                value = '';
                                print('value = $value');

                                print('value1 = $value1');
                              }

                            });
                          },
                          child: Container(
                            child: Icon(Icons.remove, color: Color(0xff26ba7e), size: 24,),
                            color: Colors.white10,
                            alignment: Alignment.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: InkWell(
                          onTap: (){

                            setState(() {
                              if(input.length == 16){
                                input = '';
                                value = '';
                                operator = 0;
                                pressequal = 0;
                                presskey = 0;
                                resultFinal = '';
                                value2 = null;
                                value1 =null;
                              }

                              if(pressequal == 1 && value2 != null){
                                input = '';
                                value = '';
                                operator = 0;
                                pressequal = 0;
                                presskey = 0;
                                resultFinal = '';
                                value2 = null;
                              }

                              presskey = 1;
                              input = input + '7';
                              value = value + '7';
                              print('input is $input');
                              print('value is $value');
                            });

                          },
                          child: Container(
                            child: Text(
                              '7',
                              style:
                                  TextStyle(fontSize: 36.00, color: Colors.white),
                            ),
                            color: Colors.white10,
                            alignment: Alignment.center,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: InkWell(
                          onTap: (){

                            setState(() {
                              if(input.length == 16){
                                input = '';
                                value = '';
                                operator = 0;
                                pressequal = 0;
                                presskey = 0;
                                resultFinal = '';
                                value2 = null;
                                value1 =null;
                              }

                              if(pressequal == 1 && value2 != null){
                                input = '';
                                value = '';
                                operator = 0;
                                pressequal = 0;
                                presskey = 0;
                                resultFinal = '';
                                value2 = null;
                              }

                              presskey = 1;
                              input = input + '8';
                              value = value + '8';
                              print('input is $input');
                              print('value is $value');
                            });

                          },
                          child: Container(
                            child: Text(
                              '8',
                              style:
                              TextStyle(fontSize: 36.00, color: Colors.white),
                            ),
                            color: Colors.white10,
                            alignment: Alignment.center,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: InkWell(
                          onTap: (){

                            setState(() {
                              if(input.length == 16){
                                input = '';
                                value = '';
                                operator = 0;
                                pressequal = 0;
                                presskey = 0;
                                resultFinal = '';
                                value2 = null;
                                value1 =null;
                              }

                              if(pressequal == 1 && value2 != null){
                                input = '';
                                value = '';
                                operator = 0;
                                pressequal = 0;
                                presskey = 0;
                                resultFinal = '';
                                value2 = null;
                              }

                              presskey = 1;
                              input = input + '9';
                              value = value + '9';
                              print('input is $input');
                              print('value is $value');
                            });

                          },
                          child: Container(
                            child: Text(
                              '9',
                              style:
                                  TextStyle(fontSize: 36.00, color: Colors.white),
                            ),
                            color: Colors.white10,
                            alignment: Alignment.center,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: InkWell(
                          onTap: (){
                            setState(() {
                              if(input.length == 16){
                                input = '';
                                value = '';
                                operator = 0;
                                pressequal = 0;
                                presskey = 0;
                                resultFinal = '';
                                value2 = null;
                                value1 =null;
                              }

                              activity = 3;

                              if(pressequal == 1 && value2 != null){
                                input = '';
                                value = '';
                                operator = 0;
                                pressequal = 0;
                                presskey = 0;
                                resultFinal = '';
                                value2 = null;
                              }

                              if(presskey == 1 && operator == 0){
                                input = input + 'X';
                                value1 = int.parse(value);
                                operator = operator + 1;
                                value = '';
                                print('value = $value');

                                print('value1 = $value1');
                              }

                            });
                          },
                          child: Container(
                            child: Icon(Icons.clear, color: Color(0xff26ba7e), size: 24,),
                            color: Colors.white10,
                            alignment: Alignment.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: InkWell(
                          onTap: (){

                            setState(() {
                              if(input.length == 16){
                                input = '';
                                value = '';
                                operator = 0;
                                pressequal = 0;
                                presskey = 0;
                                resultFinal = '';
                                value2 = null;
                                value1 =null;
                              }

                              if(pressequal == 1 && value2 != null){
                                input = '';
                                value = '';
                                operator = 0;
                                pressequal = 0;
                                presskey = 0;
                                resultFinal = '';
                                value2 = null;
                              }

                              presskey = 1;
                              input = input + '0';
                              value = value + '0';
                              print('input is $input');
                              print('value is $value');
                            });

                          },
                          child: Container(
                            child: Text(
                              '0',
                              style:
                                  TextStyle(fontSize: 36.00, color: Colors.white),
                            ),
                            color: Colors.white10,
                            alignment: Alignment.center,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: InkWell(
                          onTap:(){
                            setState(() {

                              input = '';
                              value = '';
                              operator = 0;
                              pressequal = 0;
                              presskey = 0;
                              resultFinal = '';
                              value2 = null;
                            });
                          },
                          child: Container(
                            child: Text(
                              'C',
                              style:
                                  TextStyle(fontSize: 36.00, color: Colors.red),
                            ),
                            color: Colors.white10,
                            alignment: Alignment.center,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: InkWell(

                          onTap: (){
                            setState(() {
                              if(input.length == 16){
                                input = '';
                                value = '';
                                operator = 0;
                                pressequal = 0;
                                presskey = 0;
                                resultFinal = '';
                                value2 = null;
                                value1 =null;
                              }

                              if(pressequal == 1 && value2 != null){
                                input = '';
                                value = '';
                                operator = 0;
                                pressequal = 0;
                                presskey = 0;
                                resultFinal = '';
                                value2 = null;
                              }

                              pressequal = 1;

                              if (activity == 1){
                                print('value2.2 is $value2');
                                value2 = int.parse(value);
                                print('value2 is $value2');
                                result = (value1 + value2);
                                resultFinal =  result.toString();
                                print(' = $result');

                              }
                              if (activity == 2){
                                print('value2.2 is $value2');
                                value2 = int.parse(value);
                                print('value2 is $value2');
                                result = (value1 - value2);
                                resultFinal =  result.toString();
                                print(' = $result');

                              }
                              if (activity == 3){
                                print('value2.2 is $value2');
                                value2 = int.parse(value);
                                print('value2 is $value2');
                                result = (value1 * value2);
                                resultFinal = result.toString();
                                print(' = $result');

                              }
                              if (activity == 4){
                                if(value2 == 0){
                                  resultFinal = 'Infinity';

                                }
                                if (value2 !=  0){

                                  print('value2.2 is $value2');
                                  value2 = int.parse(value);
                                  print('value2 is $value2');
                                  dresult = (value1 / value2);
                                  resultFinal = dresult.toStringAsFixed(3);
                                  print(' = $result');
                                }


                              }



                            });
                          },

                          child: Container(
                            child: Text(
                              '=',
                              style:
                                  TextStyle(fontSize: 38.00, color: Colors.black),
                            ),
                            color: Color(0xff26ba7e),
                            alignment: Alignment.center,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: InkWell(
                          onTap: (){
                            setState(() {

                              activity = 4;
                              if(input.length == 16){
                                input = '';
                                value = '';
                                operator = 0;
                                pressequal = 0;
                                presskey = 0;
                                resultFinal = '';
                                value2 = null;
                                value1 =null;
                              }

                              if(pressequal == 1 && value2 != null){
                                input = '';
                                value = '';
                                operator = 0;
                                pressequal = 0;
                                presskey = 0;
                                resultFinal = '';
                                value2 = null;
                              }

                              presskey = 1;

                              if(presskey == 1 && operator == 0){
                                input = input + '/';
                                value1 = int.parse(value);
                                operator = operator + 1;
                                value = '';
                                print('value = $value');

                                print('value1 = $value1');
                              }

                            });
                          },
                          child: Container(
                            child: Text(
                              '/',
                              style:
                                  TextStyle(fontSize: 28.00, color: Color(0xff26ba7e)),
                            ),
                            color: Colors.white10,
                            alignment: Alignment.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              /*Expanded(

          flex: 1,

          child: Row(children: <Widget>[
          Container(

            child: Text('3', style: TextStyle(fontSize: 36, color: Colors.white),),

            color: Colors.yellow,
          ),
        ],),),*/

              /*Expanded(

          flex: 1,

              child: Row(children: <Widget>[
                Container(

                  child: Text('4', style: TextStyle(fontSize: 36, color: Colors.white),),

                  color: Colors.green,
                ),
              ],),
            ),*/

              /*Expanded(

          flex: 1,

              child: Row(children: <Widget>[
                Container(

                  child: Text('5', style: TextStyle(fontSize: 36, color: Colors.white),),

                  color: Colors.lightBlueAccent,
                ),
              ],),
            ),*/
            ],
          ),
        ));
  }
}
