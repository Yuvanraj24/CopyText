import 'package:flutter/material.dart';
import 'package:clipboard/clipboard.dart';

class CopyPaste extends StatefulWidget {
  const CopyPaste({ Key? key }) : super(key: key);

  @override
  State<CopyPaste> createState() => _CopyPasteState();
}

class _CopyPasteState extends State<CopyPaste> {

  TextEditingController field = TextEditingController();
  String pasteValue='';

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          child: Column(children: [
            SizedBox(
                    height: 100,
                  ),
                  TextFormField(
                    controller: field,
                    decoration: InputDecoration(
                      hintText: 'Enter text'
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      InkWell(
                        onTap: (){
                          FlutterClipboard.copy(field.text).then(( value ) => print('copied'));
                          // if(field.text.trim() == ""){
                          //   print('enter text');
                          // } else {
                          //   print(field.text);
                          //   FlutterClipboard.copy(field.text).then(( value ) =>
                          //       print('copied'));
                          // }
                        },
                        child: Container(
                          width: 100,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(15)
                          ),
                          child: Center(child: Text('COPY')),
                        ),
                      ),
                      InkWell(
                        onTap: (){                          
                            FlutterClipboard.paste().then((value) {
                              setState(() {
                                field.text = value;
                                pasteValue = value;
                              });
                            });
                        },
                        child: Container(
                          width: 100,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(15)
                          ),
                          child: Center(child: Text('PASTE')),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Clipboard Text: $pasteValue',style: TextStyle(fontSize: 20),)
          ]),
          
        ),
      );
  }
}