import 'package:flutter/material.dart';

void main() => (runApp(const CitizenScienceApp()));

// home input page

class CitizenScienceApp extends StatelessWidget {
  const CitizenScienceApp({Key? key}) : super(key: key);

  final String _title = 'Citizen Science App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text(_title)),
          backgroundColor: Colors.black,
        ),
        body: const ClassCodeInput(),
        backgroundColor: Colors.lightGreenAccent,
      ),
    );
  }
}

class CodeInputScreen extends StatelessWidget {
  const CodeInputScreen({Key? key}) : super(key: key);

  final String _title = 'Citizen Science App';

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class ClassCodeInput extends StatefulWidget {
  const ClassCodeInput({Key? key}) : super(key: key);

  @override
  _ClassCodeInputState createState() => _ClassCodeInputState();
}

class _ClassCodeInputState extends State<ClassCodeInput> {
  final GlobalKey<FormState> _classCode = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(40),
            child: const FittedBox(
              fit: BoxFit.contain,
              child: FlutterLogo(
                curve: Curves.bounceIn,
                size: 100,
              ),
            ),
          ),
          Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Welcome to the Citizen Science App!',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 30),
              )),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                // errorText: 'Invalid Code',
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.black,
                  width: 2,
                )),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.black,
                  width: 2,
                )),
                labelText: 'Code',
              ),
            ),
          ),
          Container(
            height: 50,
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: ElevatedButton(
              child: const Text(
                'Submit',
              ),
              onPressed: () {},
              style: ButtonStyle(
                textStyle:
                    MaterialStateProperty.all(const TextStyle(fontSize: 20)),
                backgroundColor: MaterialStateProperty.all(Colors.black),
              ),
            ),
          )
        ],
      ),
    );
  }
}

// class details page






