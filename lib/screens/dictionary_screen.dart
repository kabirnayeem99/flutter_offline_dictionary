import 'package:flutter/material.dart';
import 'package:flutter_offline_dictionary/theme/style.dart';

class DictionaryScreen extends StatefulWidget {
  DictionaryScreen({Key key}) : super(key: key);

  @override
  _DictionaryScreenState createState() => _DictionaryScreenState();
}

class _DictionaryScreenState extends State<DictionaryScreen> {
  PageController dictionaryScreenPageController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text("search"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text("search"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text("search"),
          ),
        ],
      ),
      body: PageView(
        controller: dictionaryScreenPageController,
        children: [
          Container(
            color: Style.redColor,
            child: Center(
              child: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(16.0),
                        child: TextField(
                          autocorrect: true,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 2.0,
                                horizontal: 8.0,
                              ),
                              focusColor: Style.redColor,
                              hoverColor: Style.redColor,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide.none,
                              ),
                              prefixIcon: Icon(
                                Icons.search,
                                color: Style.redColor,
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              hintText: "The word goes here..."),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Text(
            "whdo",
          ),
        ],
      ),
    );
  }
}
