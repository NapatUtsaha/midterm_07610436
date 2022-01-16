import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '07610436 Napat Utsaha',
      theme: ThemeData(

        primarySwatch: Colors.pink,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final _length = TextEditingController();
  final _girth = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),

        //alignment: Alignment.center,
        child: Center(
          child: Column(
            //mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.stretch,

            children: [
              Text(
                'PIG WEIGHT',
                style: TextStyle(
                    fontSize: 40.0, color: Colors.pink.shade500),
              ),
              Text(
                'CALCULATOR',
                style: TextStyle(
                    fontSize: 40.0, color: Colors.pink.shade500),
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset('assets/images/pig.png', width: 250.0,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[

                  Expanded(

                      child: TextField(

                        textAlign: TextAlign.center,
                        controller: _length,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white.withOpacity(1),
                          hintText: 'Enter Length',
                        ),
                      )
                  ),
                  Container(
                    color: Colors.white,
                    height: 130,
                    width: 20,
                  ),
                  Expanded(
                      child: TextField(
                        textAlign: TextAlign.center,
                        controller: _girth,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white.withOpacity(1),
                          hintText: 'Enter Girth',
                        ),
                      )
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: ElevatedButton(
                  child: Text('CALCULATE'),
                  onPressed: () {

                    var input = _girth.text;

                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Result'),
                          content: Text('Text'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('OK'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),

        ),

      ),
    );
  }
}
