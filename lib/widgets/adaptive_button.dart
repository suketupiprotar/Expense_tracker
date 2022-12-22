import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';

class AdaptiveFlatButton extends StatelessWidget {
  // const AdaptiveFlatButton({super.key});

  final String text; 
  final  void Function() handler;
   
   AdaptiveFlatButton(this.text,this.handler);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
                      ? CupertinoButton(
                          onPressed: handler  ,
                          child: Text(
                            text,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        )
                      : TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor: Theme.of(context).primaryColor,
                          ),
                          onPressed: handler,
                          child: Text(
                            "Choose date",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        );
  }
}