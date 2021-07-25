import 'package:flutter/material.dart';
import 'package:fancy_bar/fancy_bar.dart';
import 'tabs/catagory.dart';
import 'tabs/setting.dart';
import 'tabs/home.dart';
import 'tabs/welcome.dart';

class tab extends StatefulWidget {
  tab({Key? key}) : super(key: key);

  @override
  _tabState createState() => _tabState();
}

class _tabState extends State<tab> {
  int _currentIndex = 0;
  Color selectColor = Colors.yellow;
  List _pageList = [
    homePage(),
    categoryPage(),
    homePage(),
    settingPage(),
    WelcomePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Container(
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(45),
                color: Colors.white,
              ),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 25,
                    width: 50,
                    child: Padding(
                        padding: const EdgeInsets.only(left: 8, top: 0),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                        )),
                  ),
                  Container(
                      height: 45,
                      width: 300,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8, top: 2),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "请输入关键字",
                            //border: OutlineInputBorder(),
                          ),
                        ),
                      )),

                  // child: TextField(
                  //   decoration: InputDecoration(
                  //       hintText: "请输入关键字", labelText: "关键字"),
                  // )),
                ],
              )),
          centerTitle: true,
        ),
        body: this._pageList[this._currentIndex],
        floatingActionButton: Container(
          height: 80,
          width: 80,
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.only(top: 16),
          child: FloatingActionButton(
            child: Icon(
              Icons.add,
              color: Colors.white70,
              size: 50,
            ),
            onPressed: () {},
            backgroundColor: Colors.yellow,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: FancyBottomBar(
          type: FancyType.FancyV2, // Fancy Bar Type
          items: [
            FancyItem(
                textColor: Colors.yellow,
                title: '路书',
                icon: Icon(
                  Icons.menu_book,
                  color: Colors.grey,
                )),
            FancyItem(
                textColor: Colors.green,
                title: '景点',
                icon: Icon(
                  Icons.nature_people,
                  color: Colors.grey,
                )),
            FancyItem(
                textColor: Colors.yellow, title: '加号', icon: Icon(Icons.face)),
            FancyItem(
                textColor: Colors.redAccent,
                title: '紧急联系人',
                icon: Icon(
                  Icons.people,
                  color: Colors.grey,
                )),
            FancyItem(
              textColor: Colors.lightBlue,
              title: '我的',
              icon: Icon(
                Icons.account_circle,
                color: Colors.grey,
              ),
            ),
          ],
          onItemSelected: (index) {
            setState(() {
              this._currentIndex = index;
            });
          },
        ),
        // bottomNavigationBar: BottomNavigationBar(
        //   currentIndex: this._currentIndex,
        //   onTap: (int index) {
        //     setState(() {
        //       this._currentIndex = index;
        //     });
        //   },
        //   items: [
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.home),
        //       label: "首页",
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.cabin),
        //       label: "分类",
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.sailing),
        //       label: "设置",
        //     ),
        //   ],
        // ),
      ),
    );
  }
}

// class HomeContent extends StatefulWidget {
//   HomeContent({Key key}) : super(key: key);
//   int countNum = 1;

//   @override
//   _HomeContentState createState() => _HomeContentState();
// }

// class _HomeContentState extends State<HomeContent> {
//   int countNum = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         SizedBox(height: 200),
//         Chip(
//           label: Text('$countNum'),
//         ),
//         SizedBox(height: 20),
//         RaisedButton(
//           child: Text("按钮"),
//           onPressed: () {
//             setState(() {
//               this.countNum++;
//             });
//           },
//         )
//       ],
//     );
//   }
// }