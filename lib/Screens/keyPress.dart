import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class KeyPress extends StatefulWidget {
  final Widget child;

  const KeyPress({Key key, this.child}) : super(key: key);
  @override
  _KeyPressState createState() => _KeyPressState();
}

class _KeyPressState extends State<KeyPress> {
  final ScrollController _controller = ScrollController();
  final FocusNode _focusNode = FocusNode();

  void _handleKeyEvent(RawKeyEvent event) {
    var offset = _controller.offset;
    if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
      setState(() {
        if (kReleaseMode) {
          _controller.animateTo(offset - 60, duration: Duration(milliseconds: 120), curve: Curves.easeIn);
        } else {
          _controller.animateTo(offset - 60, duration: Duration(milliseconds: 120), curve: Curves.easeIn);
        }
      });
    }
    else if (event.logicalKey == LogicalKeyboardKey.arrowDown) {
      setState(() {
        if (kReleaseMode) {
          _controller.animateTo(offset + 60, duration: Duration(milliseconds: 120), curve: Curves.easeIn);
        } else {
          _controller.animateTo(offset +60, duration: Duration(milliseconds: 120), curve: Curves.easeIn);
        }
      });
    }
  }


  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:RawKeyboardListener(
        onKey: _handleKeyEvent, focusNode:_focusNode,autofocus: true,
        child:Scrollbar(
          isAlwaysShown: true,
          controller: _controller,
          child: SingleChildScrollView(
            controller: _controller,
            child: widget.child
          ),
        ),
      ),
    );
  }
}