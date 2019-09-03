import 'package:flutter/material.dart';

class SizePositionPage extends StatefulWidget {
  @override
  _SizePositionPageState createState() => _SizePositionPageState();
}

class _SizePositionPageState extends State<SizePositionPage> {
  final GlobalKey _cardKey = GlobalKey();
  Size cardSize;
  Offset cardPosition;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => getSizeAndPosition());
  }

  getSizeAndPosition() {
    RenderBox _cardBox = _cardKey.currentContext.findRenderObject();
    cardSize = _cardBox.size;
    cardPosition = _cardBox.localToGlobal(Offset.zero);
    print(cardSize);
    print(cardPosition);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Size Position"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Welcome to MTECHVIRAL",
                    key: _cardKey,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Find Size & Position of a Widget",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, color: Colors.red),
                  ),
                ),
              ],
            ),
          ),
          Text("Size - $cardSize"),
          Text("Position - $cardPosition "),
        ],
      ),
    );
  }
}
