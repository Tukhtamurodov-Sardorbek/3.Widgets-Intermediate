import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

import 'package:widgets_intermediate/source_code/sourceCode.dart';

class AlertDialogue extends StatefulWidget {
  const AlertDialogue({Key? key}) : super(key: key);
  static const String id = 'alert_dialogue';

  @override
  _AlertDialogueState createState() => _AlertDialogueState();
}

class _AlertDialogueState extends State<AlertDialogue> {
  /// FOR ANDROID
  void _androidDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Log out'),
            content: const Text('Are you sure you want to log out?'),
            actions: <Widget>[
              FlatButton(
                  child: const Text('Cancel'),
                  onPressed: (){Navigator.pop(context);}
              ),
              FlatButton(
                  child: const Text('Confirm'),
                  onPressed: (){Navigator.pop(context);}
              ),
            ]
          );
        }
    );
  }
  /// FOR IOS
  void _IOSDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context){
          return CupertinoAlertDialog(
            title: const Text('Log out'),
            content: const Text('Are you sure you want to log out?'),
            actions: [
              CupertinoDialogAction(
                child: const Text('Cancel'),
                isDefaultAction: true,
                onPressed: (){Navigator.pop(context);},
              ),
              CupertinoDialogAction(
                child: const Text('Confirm'),
                isDefaultAction: true,
                onPressed: (){Navigator.pop(context);},
              ),
            ],
          );
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: (){Navigator.pop(context);},
        ),
        title: const Text('Alert Dialog', style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold)),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.code, color: Colors.black),
            onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const SourceCode(carbon: 'assets/carbon/1.Alert_Dialogue.png', url: 'https://carbon.now.sh/?bg=rgba%28171%2C+184%2C+195%2C+1%29&t=seti&wt=none&l=auto&width=680&ds=true&dsyoff=20px&dsblur=68px&wc=true&wa=true&pv=56px&ph=56px&ln=false&fl=1&fm=Hack&fs=14px&lh=133%25&si=false&es=2x&wm=false&code=import%2520%27package%253Aflutter%252Fcupertino.dart%27%253B%250Aimport%2520%27package%253Aflutter%252Fmaterial.dart%27%253B%250Aimport%2520%27dart%253Aio%27%253B%250A%250Aclass%2520AlertDialogue%2520extends%2520StatefulWidget%2520%257B%250A%2520%2520const%2520AlertDialogue%28%257BKey%253F%2520key%257D%29%2520%253A%2520super%28key%253A%2520key%29%253B%250A%2520%2520static%2520const%2520String%2520id%2520%253D%2520%27alert_dialogue%27%253B%250A%250A%2520%2520%2540override%250A%2520%2520_AlertDialogueState%2520createState%28%29%2520%253D%253E%2520_AlertDialogueState%28%29%253B%250A%257D%250A%250Aclass%2520_AlertDialogueState%2520extends%2520State%253CAlertDialogue%253E%2520%257B%250A%2520%2520%252F%252F%252F%2520FOR%2520ANDROID%250A%2520%2520void%2520_androidDialog%28%29%2520%257B%250A%2520%2520%2520%2520showDialog%28%250A%2520%2520%2520%2520%2520%2520%2520%2520context%253A%2520context%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520builder%253A%2520%28BuildContext%2520context%29%2520%257B%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520return%2520AlertDialog%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520title%253A%2520const%2520Text%28%27Log%2520out%27%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520content%253A%2520const%2520Text%28%27Are%2520you%2520sure%2520you%2520want%2520to%2520log%2520out%253F%27%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520actions%253A%2520%253CWidget%253E%255B%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520FlatButton%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520child%253A%2520const%2520Text%28%27Cancel%27%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520onPressed%253A%2520%28%29%257BNavigator.pop%28context%29%253B%257D%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520FlatButton%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520child%253A%2520const%2520Text%28%27Confirm%27%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520onPressed%253A%2520%28%29%257BNavigator.pop%28context%29%253B%257D%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%255D%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%29%253B%250A%2520%2520%2520%2520%2520%2520%2520%2520%257D%250A%2520%2520%2520%2520%29%253B%250A%2520%2520%257D%250A%2520%2520%252F%252F%252F%2520FOR%2520IOS%250A%2520%2520void%2520_IOSDialog%28%29%2520%257B%250A%2520%2520%2520%2520showDialog%28%250A%2520%2520%2520%2520%2520%2520%2520%2520context%253A%2520context%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520builder%253A%2520%28BuildContext%2520context%29%257B%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520return%2520CupertinoAlertDialog%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520title%253A%2520const%2520Text%28%27Log%2520out%27%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520content%253A%2520const%2520Text%28%27Are%2520you%2520sure%2520you%2520want%2520to%2520log%2520out%253F%27%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520actions%253A%2520%255B%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520CupertinoDialogAction%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520child%253A%2520const%2520Text%28%27Cancel%27%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520isDefaultAction%253A%2520true%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520onPressed%253A%2520%28%29%257BNavigator.pop%28context%29%253B%257D%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520CupertinoDialogAction%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520child%253A%2520const%2520Text%28%27Confirm%27%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520isDefaultAction%253A%2520true%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520onPressed%253A%2520%28%29%257BNavigator.pop%28context%29%253B%257D%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%255D%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%29%253B%250A%2520%2520%2520%2520%2520%2520%2520%2520%257D%250A%2520%2520%2520%2520%29%253B%250A%2520%2520%257D%250A%2520%2520%2540override%250A%2520%2520Widget%2520build%28BuildContext%2520context%29%2520%257B%250A%2520%2520%2520%2520return%2520Scaffold%28%250A%2520%2520%2520%2520%2520%2520body%253A%2520Center%28%250A%2520%2520%2520%2520%2520%2520%2520%2520child%253A%2520FlatButton%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520color%253A%2520Colors.blue%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520child%253A%2520const%2520Text%28%27ALERT%2520DIALOG%27%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520onPressed%253A%2520%28%29%257B%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%252F%252F%252F%2520FOR%2520ANDROID%250A')));},
          )
        ],
      ),
      body: Center(
        child: FlatButton(
          color: Colors.blue,
          child: const Text('ALERT DIALOG'),
          onPressed: (){
            /// FOR ANDROID
            if(Platform.isAndroid){
              _androidDialog();
            }
            /// FOR IOS
            else if(Platform.isIOS){
              _IOSDialog();
            }
          },
        ),
      ),
    );
  }
}
