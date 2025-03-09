import 'package:flutter/material.dart';

class Editor extends StatelessWidget {
  const Editor(this._controller,this._dica,this._rotulo, this._icone, {super.key});

  final TextEditingController _controller;
  final String _rotulo;
  final String _dica;
  final IconData ?_icone;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20.0),
        child: TextField(
          controller: _controller ,
          style: TextStyle(
            fontSize: 24.0,
            color: Colors.black
          ),
          decoration: InputDecoration(
            icon: _icone != null ? Icon(_icone) : null,
            labelText: _rotulo,
            hintText: _dica,
          ),
          keyboardType: TextInputType.number,
        ),
      );
  }
}