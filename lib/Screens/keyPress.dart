import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hotel_website/Widgets/responsive.dart';
class KeyPress extends StatefulWidget {
  final Widget child;
  final double drag;

  const KeyPress({Key key, @required this.child,@required this.drag}) : super(key: key);
  @override
  _KeyPressState createState() => _KeyPressState();
}

class _KeyPressState extends State<KeyPress> {
  final ScrollController _controller = ScrollController();
  final FocusNode _focusNode = FocusNode();
  double _offset = 0;

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
        child:Stack(
          children: [
            SingleChildScrollView(
              controller: _controller,
              child: widget.child
            ),
            Responsive.isMobile(context)?SizedBox.shrink() :Container(
                alignment: Alignment.centerRight,
                height: MediaQuery.of(context).size.height,
                width: 20.0,
                margin: EdgeInsets.only(left: MediaQuery.of(context).size.width - 20.0),
                decoration: BoxDecoration(color: Colors.black12),
                child: Container(
                  alignment: Alignment.topCenter,
                  child:GestureDetector(
                    child: Container(
                      height: 40.0,
                      width: 15.0,
                      margin:
                      EdgeInsets.only(left: 5.0, right: 5.0, top: _offset),
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(Radius.circular(3.0))),
                    ),
                    onVerticalDragUpdate: (dragUpdate) {
                      _controller.position.moveTo(dragUpdate.globalPosition.dy * widget.drag);

                      setState(() {
                        if (dragUpdate.globalPosition.dy >= 0) {
                          /// Update the offset of the drag handle to push it down or shift it up
                          _offset = dragUpdate.globalPosition.dy;


                          double maxHeight = MediaQuery.of(context).size.height - 40;
                          _offset =(_offset>maxHeight) ? maxHeight : _offset;
                        }
                      });
                    },
                  ),
                )
            ),

          ],
        ),
      ),
    );
  }
}