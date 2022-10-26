import 'package:flutter/material.dart';

void main() {
  runApp(MyAppl());
}

class MyAppl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        debugShowMaterialGrid: false,
        theme: ThemeData(
          primaryColor: Colors.amberAccent,
          accentColor: Colors.amber,
        ),
        home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  dynamic number;
  int number2=0;
  final TextEditingController _controller = TextEditingController();



  void _runFilter(String enteredKeyword) {
    setState(() {

      number = enteredKeyword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Wrap(
        children: <Widget>[
          // Container(
          //   margin: EdgeInsets.all(10),
          //   child: FloatingActionButton(
          //     onPressed: () {
          //       _controller.clear();
          //       setState(() {
          //        numbersresult1=0;
          //         _controller.clear();
          //
          //         if(number ==) {
          //
          //           number =  (int.parse(numbersresult));
          //         }else{
          //
          //           number2 = int.parse(numbersresult);
          //         }
          //
          //         numbersresult1=number-number2;
          //       });
          //     },
          //     child: Icon(
          //       Icons.minimize,
          //     ),
          //   ),
          // ),
          Container(
            margin: EdgeInsets.all(10),
            child: FloatingActionButton(
              onPressed: () {
                _controller.clear();
                setState(() {
                  _controller.clear();
                  number2 = int.parse(number) + number2;
                });
              },
              child: Icon(
                Icons.add,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: FloatingActionButton(
              onPressed: () {

                setState(() {
                  number = 0;
                  number2 = 0;

                });
              },
              child: Icon(
                Icons.exposure_zero,
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      appBar: AppBar(
        title: Text('الحاسبة الذكية'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onSubmitted: (String value) async {
                await showDialog<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Thanks!'),
                      content: Text(
                          'You typed "$value", which has length ${value.characters.length}.'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('OK'),
                        ),
                      ],
                    );
                  },
                );
              },
              controller: _controller,
              textInputAction: TextInputAction.done,
              cursorHeight: 10.5,
              keyboardType: TextInputType.number,
              onChanged: (value) => _runFilter(value),
              decoration: const InputDecoration(
                  labelText: '', suffixIcon: Icon(Icons.search)),
            ),
            Text(
              "النتيجة",
              textDirection: TextDirection.rtl,
              style: TextStyle(
                decorationStyle: TextDecorationStyle.dotted,
                backgroundColor: Colors.amber,
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "$number2",
              textDirection: TextDirection.rtl,
              style: TextStyle(
                decorationStyle: TextDecorationStyle.dotted,
                backgroundColor: Colors.cyanAccent,
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
