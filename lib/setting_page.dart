import 'package:flutter/material.dart';
import 'package:police_img_proces/sign_up_page.dart';
import 'package:police_img_proces/size_config.dart';

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
          width: SizeConfig.blockSizeHorizontal*100,
          height: SizeConfig.blockSizeVertical*100,
        child: Column(
          children: [
            Container(
              width: SizeConfig.blockSizeHorizontal*40,
              height: SizeConfig.blockSizeVertical*40,
              child: Image.asset('assets/userIcon.png'),
            ),
            Container(
              alignment: Alignment.centerLeft,
              width: SizeConfig.blockSizeHorizontal*80,
              height: SizeConfig.blockSizeVertical*5,
              padding: EdgeInsets.only(top: 3.0),
              decoration: new BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 1.0, color: Colors.black),
                ),
                //color: Colors.green,
              ),
              child: Text('Guest Login!'),
            ),
            Container(
              alignment: Alignment.centerLeft,
              width: SizeConfig.blockSizeHorizontal*80,
              height: SizeConfig.blockSizeVertical*5,
              padding: EdgeInsets.only(top: 3.0),
              decoration: new BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 1.0, color: Colors.black),
                ),
                //color: Colors.green,
              ),
              child: Text('N/A'),
            ),
            Container(
              alignment: Alignment.centerLeft,
              width: SizeConfig.blockSizeHorizontal*80,
              height: SizeConfig.blockSizeVertical*5,
              padding: EdgeInsets.only(top: 3.0),
              decoration: new BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 1.0, color: Colors.black),
                ),
                //color: Colors.green,
              ),
              child: Text('N/A'),
            ),
            Container(
              alignment: Alignment.centerLeft,
              width: SizeConfig.blockSizeHorizontal*80,
              height: SizeConfig.blockSizeVertical*5,
              padding: EdgeInsets.only(top: 3.0),
              decoration: new BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 1.0, color: Colors.black),
                ),
                //color: Colors.green,
              ),
              child: Text('N/A'),
            ),
            Container(
              width: SizeConfig.blockSizeHorizontal*80,
              height: SizeConfig.blockSizeVertical*5,
              padding: EdgeInsets.only(top: 3.0),
              child: RaisedButton(
                elevation: 5,
                color: Colors.green,
                child: Text('Log Out'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUpPage()));
                },
              ),
            ),
          ],
        )
      ),
    );
  }
}