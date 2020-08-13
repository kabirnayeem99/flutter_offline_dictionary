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
            icon: Icon(
              Icons.history,
              color: Style.orangeColor,
            ),
            title: Text(
              "History",
              style: TextStyle(
                color: Style.orangeColor,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Style.redColor),
            title: Text(
              "Search",
              style: TextStyle(
                color: Style.redColor,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite, color: Style.greenColor),
            title: Text(
              "Favorites",
              style: TextStyle(
                color: Style.greenColor,
              ),
            ),
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
                    Container(
                      height: 200.0,
                      margin: EdgeInsets.all(16.0),
                      child: Align(
                        alignment: Alignment.bottomCenter,
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
