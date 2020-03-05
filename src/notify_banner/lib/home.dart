import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextStyle whiteText = TextStyle(
    color: Colors.white,
  );

  bool shouldShowBanner = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Material Banner"),
      ),
      body: Column(
        children: <Widget>[
          if (shouldShowBanner)
            MaterialBanner(
              padding: const EdgeInsets.all(20),
              contentTextStyle: whiteText,
              content: Text(
                "Your card has expired. Update your credit card information.",
              ),
              leading: Icon(
                Icons.credit_card,
                color: Colors.white,
              ),
              backgroundColor: Colors.indigo,
              actions: <Widget>[
                FlatButton(
                  child: Text("UPDATE", style: whiteText),
                  onPressed: _hideBanner,
                ),
                FlatButton(
                  child: Text("DISMISS", style: whiteText),
                  onPressed: _hideBanner,
                ),
              ],
            )
        ],
      ),
    );
  }

  void _hideBanner() {
    setState(() => shouldShowBanner = false);
  }
}