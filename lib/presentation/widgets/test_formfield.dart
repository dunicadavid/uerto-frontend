// File created by
// Dunica David-Gabriel <FLTY>
// on 14/04/2023 11:36:35

import 'package:flutter/material.dart';

class TestFormField extends StatefulWidget {
  const TestFormField(
      {Key? key, required String labelText, required IconData icon, required TextEditingController textController})
      : _textController = textController,
        _icon = icon,
        _labelText = labelText,
        super(key: key);

  final TextEditingController _textController;
  final String _labelText;
  final IconData _icon;

  @override
  _TestFormFieldState createState() => _TestFormFieldState();
}

class _TestFormFieldState extends State<TestFormField> {
  final FocusNode _focusNode = FocusNode();
  bool _isFocused = false;
  bool _obscureText = true;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(_handleFocusChange);
  }

  @override
  void dispose() {
    _focusNode.removeListener(_handleFocusChange);
    _focusNode.dispose();
    super.dispose();
  }

  void _handleFocusChange() {
    setState(() {
      _isFocused = _focusNode.hasFocus;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: _focusNode,
      obscureText: _obscureText && (widget._labelText == 'Password' || widget._labelText == 'rePassword'),
      style: const TextStyle(fontFamily: 'Plus', fontWeight: FontWeight.bold),
      controller: widget._textController,
      cursorColor: Theme.of(context).secondaryHeaderColor,
      decoration: InputDecoration(
        hintText: widget._labelText,
        prefixIcon: Icon(
          widget._icon,
          color: _isFocused ? Theme.of(context).secondaryHeaderColor : Colors.grey,
        ),
        suffixIcon: widget._labelText == 'Password' || widget._labelText == 'rePassword'
            ? IconButton(
                icon: _obscureText
                    ? Icon(
                        Icons.visibility_off,
                        color: _isFocused ? Theme.of(context).secondaryHeaderColor : Colors.grey,
                      )
                    : Icon(
                        Icons.visibility,
                        color: _isFocused ? Theme.of(context).secondaryHeaderColor : Colors.grey,
                      ),
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
              )
            : null,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50.0),
          borderSide: BorderSide(
            color: Theme.of(context).secondaryHeaderColor,
            width: 2.0,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
      ),
    );
  }
}
