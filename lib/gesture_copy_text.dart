import 'package:flutter/material.dart';
import 'package:clipboard/clipboard.dart';

class GestureCopy extends StatefulWidget {
  const GestureCopy({ Key? key }) : super(key: key);

  @override
  State<GestureCopy> createState() => _GestureCopyState();
}

class _GestureCopyState extends State<GestureCopy> {

  String word = "Hello  guys!!!";

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        if(word == ""){
            print('There is no text to copy');
          } else {
            print(word);
            FlutterClipboard.copy(word).then(( value ) =>
            print('copied'));
        }
      },
      child: Text(word,style: TextStyle(fontSize: 25),),
    );
  }
}