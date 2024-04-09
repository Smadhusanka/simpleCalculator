import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'simple calculator',
      debugShowCheckedModeBanner: false,
      home: MyClassOne(),
    );
  }
}


class MyClassOne extends StatefulWidget {
  const MyClassOne({Key? key}) : super(key: key);

  @override
  State<MyClassOne> createState() => _MyClassOneState();
}

class _MyClassOneState extends State<MyClassOne> {

    final _value1 = TextEditingController();
    final _value2 = TextEditingController();
    String _answer = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'simple calculator',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: [
            //answer text
            Padding(padding: EdgeInsets.all(20)),
            Column(
              children: [
                Text(
                  "$_answer",
                  style: TextStyle(color: Colors.black, fontSize: 40),
                )
              ],
            ),

            //value 01 textfield
            Padding(padding: EdgeInsets.all(15)),
            Column(
              children: [
                SizedBox(
                  width: 250,
                  height: 50,
                  child: TextField(
                    controller: _value1,
                    decoration: InputDecoration(
                        hintText: 'value 01',
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.all(10)),
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),

            //value two textfield
            Padding(padding: EdgeInsets.all(15)),
            Column(
              children: [
                SizedBox(
                  width: 250,
                  height: 50,
                  child: TextField(
                    controller: _value2,
                    decoration: InputDecoration(
                        hintText: 'value 02',
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.all(10)),
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),

            Padding(padding: EdgeInsets.all(15)),

            // Button Row 1
            Row(
              children: [
                // + button
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.all(15)),
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          double v1 = double.tryParse(_value1.text) ?? 0;
                          double v2 = double.tryParse(_value2.text) ?? 0;
                          double v3 = (v1 + v2);
                          String limitV3 = v3.toStringAsFixed(3);
                          _answer = '$limitV3';
                          
                        });
                      },
                      child: Text('+', style: TextStyle(color: Colors.black, fontSize: 40),),
                      color: Colors.blue,
                    ),
                  ],
                ),
                //- button
                 Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.all(15)),
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          double v1 = double.tryParse(_value1.text) ?? 0;
                          double v2 = double.tryParse(_value2.text) ?? 0;
                          double v3 = (v1 - v2);
                          String limitV3 = v3.toStringAsFixed(3);
                          _answer = '$limitV3';
                        });
                      },
                      child: Text('-', style: TextStyle(color: Colors.black, fontSize: 40),),
                      color: Colors.blue,
                    ),
                  ],
                ),
                //- button
                 Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.all(15)),
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          double v1 = double.tryParse(_value1.text) ?? 0;
                          double v2 = double.tryParse(_value2.text) ?? 0;
                          double v3 = (v1 * v2);
                          String limitV3 = v3.toStringAsFixed(3);
                          _answer = '$limitV3';
                        });
                      },
                      child: Text('*', style: TextStyle(color: Colors.black, fontSize: 40),),
                      color: Colors.blue,
                    ),
                  ],
                ),
              ],
            ),

            Padding(padding: EdgeInsets.all(15)),

            // Button Row 2
            Row(
              children: [
                // / button
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.all(15)),
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                           double v1 = double.tryParse(_value1.text) ?? 0;
                          double v2 = double.tryParse(_value2.text) ?? 0;
                          double v3 = (v1 / v2);
                          String limitV3 = v3.toStringAsFixed(3);
                          _answer = '$limitV3';
                        });
                      },
                      child: Text('/', style: TextStyle(color: Colors.black, fontSize: 40),),
                      color: Colors.blue,
                    ),
                  ],
                ),
                //% button
                 Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.all(15)),
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          double v1 = double.tryParse(_value1.text) ?? 0;
                          double v2 = double.tryParse(_value2.text) ?? 0;
                          double v3 = (v1 % v2);
                          String limitV3 = v3.toStringAsFixed(3);
                          _answer = '$limitV3';
                        });
                      },
                      child: Text('%', style: TextStyle(color: Colors.black, fontSize: 40),),
                      color: Colors.blue,
                    ),
                  ],
                ),
                //clear
                 Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.all(15)),
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          
                          _answer = '';
                          _value1.text = '';
                          _value2.text = '';
                          
                        });
                      },
                      child: Text('c', style: TextStyle(color: Colors.black, fontSize: 40),),
                      color: Colors.blue,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
