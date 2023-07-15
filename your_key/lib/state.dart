import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:your_key/valorRandom.dart' as random;

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
  late final TextEditingController _controllerText = TextEditingController(
      text: '$_randomString$_randomCharsSpecial$_randomNumber');

  void _stateChangeString() {
    setState(() {
      _randomString = random.ValorRandom().generateRandomString(3);
    });
  }

  void _stateChangeNumber() {
    setState(() {
      _randomNumber = random.ValorRandom().generateRandomNumber(3);
    });
  }

  void _stateChangeSpecial() {
    setState(() {
      _randomCharsSpecial = random.ValorRandom().generateRandomCharsSpecial(3);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
             const Text('Your Key', textAlign: TextAlign.center),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 300,
                    height: 60,
                    decoration: BoxDecoration(
                      color:const Color.fromARGB(255, 175, 172, 172),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      controller: _controllerText, //_controllerText
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Digite seu nome'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Positioned(
              bottom: 20,
              left: 30,
              width: 50,
              height: 50,
              child: FloatingActionButton(
                onPressed: _stateChangeString,
                tooltip: 'Text que muda',
                child: const Icon(Icons.autorenew),
              ),
            ),
            Positioned(
              right: 20,
              bottom: 20,
              width: 50,
              height: 50,
              child: FloatingActionButton(
                onPressed: _stateChangeNumber,
                tooltip: 'numero que muda',
                child: const Icon(Icons.autorenew),
              ),
            ),
            Positioned(
              right: 100,
              bottom: 20,
              width: 50,
              height: 50,
              child: FloatingActionButton(
                onPressed: _stateChangeSpecial,
                tooltip: 'Char que muda',
                child: const Icon(Icons.autorenew),
              ),
            ),
            Positioned(
                right: 150,
                bottom: 20,
                width: 90,
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
        ));
  }
}
