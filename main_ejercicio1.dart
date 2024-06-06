import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Alertas con Cupertino y Material - Piero Quiroz'),
        ),
        body: const Center(
          child: AlertButtons(),
        ),
      ),
    );
  }
}

class AlertButtons extends StatelessWidget {
  const AlertButtons({super.key});

  void _showMaterialAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Alerta con Material'),
          content: const Text('Esta es la primera alerta.'),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _showMaterialAlertWithOptions(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Alerta con Material y opciones'),
          content: const Text('Esta es la segunda alerta.'),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _showCupertinoAlert(BuildContext context) {
    showCupertinoDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: const Text('Alerta con Cupertino'),
          content: const Text('Esta es la terera alerta.'),
          actions: <CupertinoDialogAction>[
            CupertinoDialogAction(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _showCupertinoAlertWithOptions(BuildContext context) {
    showCupertinoDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: const Text('Alerta con Cupertino y opciones'),
          content: const Text('Esta es la cuarta alerta.'),
          actions: <CupertinoDialogAction>[
            CupertinoDialogAction(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            CupertinoDialogAction(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            onPressed: () => _showMaterialAlert(context),
            child: const Text('Mostrar Alerta de Material'),
          ),
          const SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () => _showMaterialAlertWithOptions(context),
            child: const Text('Mostrar Alerta de Material con opciones'),
          ),
          const SizedBox(height: 16.0),
          CupertinoButton(
            onPressed: () => _showCupertinoAlert(context),
            child: const Text('Mostrar Alerta de Cupertino'),
          ),
          const SizedBox(height: 16.0),
          CupertinoButton(
            onPressed: () => _showCupertinoAlertWithOptions(context),
            child: const Text('Mostrar Alerta de Cupertino con opciones'),
          ),
        ],
      ),
    );
  }
}



// class CupertinoScreen extends StatelessWidget {
//   const CupertinoScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return CupertinoPageScaffold(
//       navigationBar: CupertinoNavigationBar(
//         middle: const Text('Cupertino Page'),
//       ),
//       child: Center(
//         child: CupertinoButton(
//           child: const Text('Back to Home'),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//       ),
//     );
//   }
// }