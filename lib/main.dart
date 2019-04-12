import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Calculator',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Flutter Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var number1 = 0, number2 = 0, sum = 0;

  final TextEditingController _textEditingController1 = TextEditingController(text: '0');
  final TextEditingController _textEditingController2 = TextEditingController(text: '0');

  void addition() {
    setState(() {
      number1 = int.parse(_textEditingController1.text);
      number2 = int.parse(_textEditingController2.text);
      sum = number1 + number2;
    });
  }

  void subtraction() {
    setState(() {
      number1 = int.parse(_textEditingController1.text);
      number2 = int.parse(_textEditingController2.text);
      sum = number1 - number2;
    });
  }

  void multiplication() {
    setState(() {
      number1 = int.parse(_textEditingController1.text);
      number2 = int.parse(_textEditingController2.text);
      sum = number1 * number2;
    });
  }

  void division() {
    setState(() {
      number1 = int.parse(_textEditingController1.text);
      number2 = int.parse(_textEditingController2.text);
      sum = number1 ~/ number2;
    });
  }
  void clear() {
    setState(() {
      _textEditingController1.text = '0';
      _textEditingController2.text = '0';
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'Result = $sum',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.blue
              ),
            ),



            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Enter a number',
              ),
              controller: _textEditingController1,
              textInputAction: TextInputAction.next,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Enter a number',
              ),
              controller: _textEditingController2,
              textInputAction: TextInputAction.done,
            ),

            Padding(
                padding: const EdgeInsets.only(top: 24.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                MaterialButton(
                  child: new Text(
                      "+",
                    style: TextStyle(
                      fontSize: 36.0,
                      color: Colors.red,
                    ),
                  ),
                  color: Colors.cyan,
                  onPressed: addition,
                ),
                MaterialButton(
                  child: new Text(
                      "-",
                    style: TextStyle(
                      fontSize: 36.0,
                      color: Colors.red,
                    ),
                  ),
                  color: Colors.cyan,
                  onPressed: subtraction,
                ),
                MaterialButton(
                  child: new Text(
                    "*",
                    style: TextStyle(
                      fontSize: 36.0,
                      color: Colors.red,
                    ),
                  ),
                  color: Colors.cyan,
                  onPressed: multiplication,
                ),

              ],
            ),
            Padding(padding: EdgeInsets.only(top: 24.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                MaterialButton(
                  child: new Text(
                    "/",
                    style: TextStyle(
                      fontSize: 36.0,
                      color: Colors.red,
                    ),
                  ),
                  color: Colors.cyan,
                  onPressed: division,
                ),
                MaterialButton(
                  child: new Text(
                      "Clear",
                    style: TextStyle(
                      fontSize: 36.0,
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.purple,
                  onPressed: clear,
                ),
              ],

            )
          ],
        ),
      ),
    );
  }
}
