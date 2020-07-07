import 'package:flutter/material.dart';
import 'file:///D:/flutterProject/police_img_proces/lib/ui/image_forensic.dart';
import 'package:police_img_proces/setting_page.dart';
import 'package:police_img_proces/size_config.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //////////////////bottom navigation//////////////
  //int _selectedTabIndex = 0;
  int _currentIndex = 0;


/////////////////////////end///////////////////////////
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Home Page"),centerTitle: true,),
        body: IndexedStack(
          index: _currentIndex,
          children: [
            Container(
              width: SizeConfig.blockSizeHorizontal*100,
              height: SizeConfig.blockSizeVertical*100,
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      GestureDetector(
                        child: Image.asset('assets/image-forensic.png'),
                        onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => ImageForensic()));

                        },
                      ),
                      GestureDetector(
                        child: Image.asset('assets/999-emergency-call.png'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.blockSizeVertical*10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      GestureDetector(
                        child: Image.asset('assets/live-chat.png'),
                      ),
                      GestureDetector(
                        child: Image.asset('assets/about.png'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //setting class
            SettingPage(),
          ],
        ),
        /////////bottom navigation start//////////////

    bottomNavigationBar: new BottomNavigationBar(
    currentIndex: _currentIndex,
    onTap: (newIndex) => setState((){_currentIndex = newIndex;}),
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text(
                  "Home",
                  style: TextStyle(fontSize: 11),
                )),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                title: Text(
                  "Settings",
                  style: TextStyle(fontSize: 11),
                )),
          ],
        ),

////////////bottom navigation end////////////////////////////
      ),
    );
  }
}