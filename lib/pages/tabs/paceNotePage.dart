import 'package:flutter/material.dart';
import '../../res/module/paceNote.dart';

class paceNotePage extends StatelessWidget {
  const paceNotePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          primary: true,
          backgroundColor: Colors.yellow,
          centerTitle: true,
          title: Text('路书'),
          leading: IconButton(
            //drawer
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            )
          ],
        ),
        body: ListView(
          children: <Widget>[
            GestureDetector(
              child: paceNote(
                paceNoteID: 00,
                userID: 00,
                title: "明日方舟",
                note:
                    "末日生存不服来战,突如其来的假期,突如其来的假期,突如其来的假期,突如其来的假期,突如其来的假期,突如其来的假期,",
                photo: 'https://www.itying.com/images/flutter/2.png',
              ),
              onTap: () {
                print('jump to details of paceNote, such as senicspot');
              },
            ),
            GestureDetector(
              child: paceNote(
                paceNoteID: 01,
                userID: 01,
                title: "阚清子",
                note: "突如其来的假期",
                photo: 'https://www.itying.com/images/flutter/2.png',
              ),
              onTap: () {
                print('jump to details');
              },
            ),
            GestureDetector(
              child: paceNote(
                paceNoteID: 02,
                userID: 02,
                title: "小众景点",
                note: "心旷神怡",
                photo: 'https://www.itying.com/images/flutter/2.png',
              ),
              onTap: () {
                print('jump to details');
              },
            ),
          ],
        ));
  }
}
