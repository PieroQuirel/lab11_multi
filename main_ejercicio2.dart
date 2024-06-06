import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const SliderApp());

class SliderApp extends StatelessWidget {
  const SliderApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SliderExample(),
    );
  }
}

class SliderExample extends StatefulWidget {
  const SliderExample({Key? key}) : super(key: key);

  @override
  State<SliderExample> createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {
  double _currentCupertinoSliderValue = 0.0;
  double _currentMaterialSliderValue = 0.0;
  String? _cupertinoSliderStatus;
  String? _materialSliderStatus;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider Sample'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('Valor de Cupertino Slider: $_currentCupertinoSliderValue'),
            CupertinoSlider(
              value: _currentCupertinoSliderValue,
              divisions: 5,
              max: 100,
              activeColor: CupertinoColors.systemPurple,
              thumbColor: CupertinoColors.systemPurple,
              onChangeStart: (double value) {
                setState(() {
                  _cupertinoSliderStatus = 'Sliding';
                });
              },
              onChangeEnd: (double value) {
                setState(() {
                  _cupertinoSliderStatus = 'Finished sliding';
                });
              },
              onChanged: (double value) {
                setState(() {
                  _currentCupertinoSliderValue = value;
                });
              },
            ),
            Text(
              _cupertinoSliderStatus ?? '',
              style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                fontSize: 12,
              ),
            ),
            SizedBox(height: 20),
            Text('Valor de Material Slider: $_currentMaterialSliderValue'),
            Slider(
              value: _currentMaterialSliderValue,
              onChanged: (double value) {
                setState(() {
                  _currentMaterialSliderValue = value;
                });
              },
              min: 0,
              max: 100,
              divisions: 5,
              activeColor: Colors.deepPurple,
              label: '$_currentMaterialSliderValue',
            ),
          ],
        ),
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