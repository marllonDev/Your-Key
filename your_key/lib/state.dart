import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:your_key/valor_random.dart' as random;

class MyStateFulPage extends StatefulWidget {
  const MyStateFulPage({super.key});

  @override
  _MyStateFulPageState createState() => _MyStateFulPageState();
}

class _MyStateFulPageState extends State<MyStateFulPage> {
  String _randomString = random.ValorRandom().generateRandomString(3);
  String _randomNumber = random.ValorRandom().generateRandomNumber(3);
  String _randomCharsSpecial =
      random.ValorRandom().generateRandomCharsSpecial(3);
  late final TextEditingController _controllerText;

  @override
  void initState() {
    super.initState();
    _controllerText = TextEditingController(
        text: '$_randomString$_randomCharsSpecial$_randomNumber');
  }

  void _stateChangeString() {
    setState(() {
      _randomString = random.ValorRandom().generateRandomString(_value.toInt());
      _controllerText.text = '$_randomString$_randomCharsSpecial$_randomNumber';
    });
  }

  void _stateChangeNumber() {
    setState(() {
      _randomNumber = random.ValorRandom().generateRandomNumber(_value.toInt());
      _controllerText.text = '$_randomString$_randomCharsSpecial$_randomNumber';
    });
  }

  void _stateChangeSpecial() {
    setState(() {
      _randomCharsSpecial =
          random.ValorRandom().generateRandomCharsSpecial(_value.toInt());
      _controllerText.text = '$_randomString$_randomCharsSpecial$_randomNumber';
    });
  }

  double _value = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 6, 6, 6),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Your Key',
              style: TextStyle(
                color: Color.fromARGB(233, 251, 154, 40),
                fontSize: 60,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
                height: -3,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 350,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 211, 210, 210),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    controller: _controllerText, //_controllerText
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Digite seu nome',
                    ),
                    style: const TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 28,
                    ),
                  ),
                ),
              ],
            ),
            SafeArea(
              minimum: const EdgeInsets.all(20),
              child: Slider(
                value: _value,
                min: 3,
                max: 20,
                divisions: 20,
                label: _value.round().toString(),
                onChanged: (newValue) {
                  setState(() {
                    //_controllerText.text = newValue.toString();
                    _value = newValue;
                    _stateChangeSpecial();
                    _stateChangeNumber();
                    _stateChangeString();
                  });
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          //   Positioned(
          //     bottom: 20,
          //     left: 30,
          //     width: 50,
          //     height: 50,
          //     child: FloatingActionButton(
          //       onPressed: _stateChangeString,
          //       tooltip: 'Text que muda',
          //       child: const Icon(Icons.autorenew),
          //     ),
          //   ),
          //   Positioned(
          //     right: 20,
          //     bottom: 20,
          //     width: 50,
          //     height: 50,
          //     child: FloatingActionButton(
          //       onPressed: _stateChangeNumber,
          //       tooltip: 'numero que muda',
          //       child: const Icon(Icons.autorenew),
          //     ),
          //   ),
          //   Positioned(
          //     right: 100,
          //     bottom: 20,
          //     width: 50,
          //     height: 50,
          //     child: FloatingActionButton(
          //       onPressed: _stateChangeSpecial,
          //       tooltip: 'Char que muda',
          //       child: const Icon(Icons.autorenew),
          //     ),
          //   ),
          Positioned(
              right: 120,
              bottom: 20,
              width: 120,
              height: 50,
              child: ElevatedButton(
                  child: const Text('Copiar Senha'),
                  onPressed: () {
                    Clipboard.setData(
                        ClipboardData(text: _controllerText.text));
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return const AlertDialog(
                            title: Text("Sucesso"),
                            content: Text("Senha copiada"),
                          );
                        });
                  })),
        ],
      ),
    );
  }
}
