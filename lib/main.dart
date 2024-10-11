import 'package:flutter/material.dart';
import 'package:sine_slider/sine_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sine Slider Demo',
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        body: Builder(
          builder: (context) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    NormalSlider(),
                    _SineSlider(),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class NormalSlider extends StatefulWidget {
  const NormalSlider({
    super.key,
  });

  @override
  State<NormalSlider> createState() => _NormalSliderState();
}

class _NormalSliderState extends State<NormalSlider> {
  double _value = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Slider(
          value: _value,
          onChanged: (value) {
            setState(() => _value = value);
          },
        ),
        SizedBox(height: 20),
        Text('Value: $_value', style: TextStyle(color: Colors.white)),
      ],
    );
  }
}

class _SineSlider extends StatefulWidget {
  const _SineSlider();

  @override
  State<_SineSlider> createState() => __SineSliderState();
}

class __SineSliderState extends State<_SineSlider> {
  double _value = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SineSlider(
          value: _value,
          onChanged: (value) {
            setState(() => _value = value);
          },
          onChangeStart: (value) {},
          onChangeEnd: (value) {},
        ),
        SizedBox(height: 20),
        Text('Value: $_value', style: TextStyle(color: Colors.white)),
      ],
    );
  }
}
