import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Pagina5 extends StatelessWidget {
  const Pagina5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text('Página 5'),
        trailing: CupertinoButton(
          // Botón de regreso en 'trailing'
          padding: EdgeInsets.zero,
          child: const Icon(CupertinoIcons.back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const <Widget>[
            CupertinoButton(
              onPressed: null,
              child: Text('Enabled'),
            ),
            SizedBox(height: 30),
            CupertinoButton.filled(
              onPressed: null,
              child: Text('Enabled'),
            ),
          ],
        ),
      ),
    );
  }
}
