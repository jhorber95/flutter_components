import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _sliderValue = 25;
  bool _blockSlider = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders'),
      ),
      body: Container(
          padding: EdgeInsets.only(top: 50.0),
          child: Column(
            children: <Widget>[
              _createSlider(),
              _checkBox(),
              _createSwitch(),
              _createImage(),
            ],
          )),
    );
  }

  Widget _createSlider() {
    return Slider(

      activeColor: Colors.blue,
      label: 'image value',
//      divisions: 10,
      value: _sliderValue,
      min: 0,
      max: 500.0,
      onChanged: _blockSlider ? null : (value) {
        setState(() {
          _sliderValue = value;
        });
      },
    );
  }

  _createImage() {
    return Image(
      image: NetworkImage(
          'https://static.comicvine.com/uploads/original/11111/111112549/3012342-4789235892-63081.png'),
      width: _sliderValue,
      fit: BoxFit.contain,
    );
  }

  Widget _checkBox() {
    /* return Checkbox(
      value: _blockSlider,
      onChanged: (value) {
        setState(() {
          _blockSlider = value;
        });
      },
    );*/

    return CheckboxListTile(
      title: Text('Block slider'),
      value: _blockSlider,
      onChanged: (value) {
        setState(() {
          _blockSlider = value;
        });
      },
    );
  }

  Widget _createSwitch() {
    return SwitchListTile(
      title: Text('Swich'),
        value: _blockSlider,
        onChanged: (val) {
          setState(() {
            _blockSlider = val;
          });
        }
    );
  }
}
