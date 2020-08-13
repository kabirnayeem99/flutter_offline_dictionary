import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_offline_dictionary/theme/style.dart';

class DictionaryScreen extends StatefulWidget {
  DictionaryScreen({Key key}) : super(key: key);

  @override
  _DictionaryScreenState createState() => _DictionaryScreenState();
}

class _DictionaryScreenState extends State<DictionaryScreen> {
  PageController dictionaryScreenPageController;
  int _page = 1;

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  void navigationTapped(int page) {
    dictionaryScreenPageController.jumpToPage(page);
  }

  Color determinColorOfNavigationBarItem(int pageNumber) {
    Color navigationBarColor;
    if (pageNumber == 0) {
      navigationBarColor = Style.orangeColor;
    } else if (pageNumber == 1) {
      navigationBarColor = Style.redColor;
    } else if (pageNumber == 2) {
      navigationBarColor = Style.greenColor;
    } else {
      navigationBarColor = Colors.black;
    }
    return navigationBarColor;
  }

  double determineFontAndIconSizeOfItem(int pageNumber, int tabIcon) {
    double fontAndIconSize;
    if (pageNumber == tabIcon) {
      fontAndIconSize = 36.0;
    } else {
      fontAndIconSize = 28.0;
    }
    return fontAndIconSize;
  }

  @override
  void initState() {
    super.initState();
    dictionaryScreenPageController = PageController(initialPage: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CupertinoTabBar(
        border: Border(
          top: BorderSide.none,
        ),
        currentIndex: _page,
        onTap: navigationTapped,
        activeColor: Colors.black,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.history,
              size: determineFontAndIconSizeOfItem(_page, 0),
              color: determinColorOfNavigationBarItem(_page),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: determinColorOfNavigationBarItem(_page),
              size: determineFontAndIconSizeOfItem(_page, 1),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border,
              size: determineFontAndIconSizeOfItem(_page, 2),
              color: determinColorOfNavigationBarItem(_page),
            ),
          ),
        ],
      ),
      body: PageView(
        onPageChanged: onPageChanged,
        controller: dictionaryScreenPageController,
        children: [
          Text(
            "whdo",
          ),
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
