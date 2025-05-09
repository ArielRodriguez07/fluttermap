import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Pagina6 extends StatefulWidget {
  const Pagina6({Key? key}) : super(key: key);

  @override
  State<Pagina6> createState() => _Pagina6State();
}

class _Pagina6State extends State<Pagina6> {
  int? _sliding = 0;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text('Página 6'),
        trailing: CupertinoButton(
          padding: EdgeInsets.zero,
          child: const Icon(CupertinoIcons.back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      child: Center(
        child: CupertinoSlidingSegmentedControl<int>(
          children: const {
            0: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text('Opción 0'),
            ),
            1: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text('Opción 1'),
            ),
            2: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text('Opción 2'),
            ),
          },
          groupValue: _sliding,
          onValueChanged: (int? newValue) {
            setState(() {
              _sliding = newValue;
            });
          },
        ),
      ),
    );
  }
}
