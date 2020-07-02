import 'package:flutter/material.dart';
import 'package:police_img_proces/home_page.dart';
import 'package:police_img_proces/size_config.dart';


class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(width: SizeConfig.blockSizeHorizontal*100,
          height: SizeConfig.blockSizeVertical*100,
          //background image set
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("assets/Sign Up.png"),
              fit: BoxFit.fill,
            ),
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Image.asset('assets/bd-police-logo.png'),
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical * 2,
              ),
              Container(
                child: Text(
                  'Image Forensic Lab',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical * 12,
              ),
              Container(
                height: SizeConfig.blockSizeVertical * 5,
                width: SizeConfig.blockSizeHorizontal * 60,
                child: RaisedButton(
                  elevation: 5,
                  color: Colors.green,
                  child: Text('Sign in with Google'),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical * 2,
              ),
              Container(
                height: SizeConfig.blockSizeVertical * 5,
                width: SizeConfig.blockSizeHorizontal * 60,
                child: RaisedButton(
                  elevation: 5,
                  color: Colors.blue,
                  child: Text('Sign in with Facebook'),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical * 2,
              ),
              Container(
                height: SizeConfig.blockSizeVertical * 5,
                width: SizeConfig.blockSizeHorizontal * 60,
                child: RaisedButton(
                  elevation: 5,
                  color: Colors.blue,
                  child: Text('Guest Login'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


}