import 'package:flutter/material.dart';
import 'package:flutter_base/utils/exports.dart';

class BottomSheetDemo extends StatefulWidget {
  @override
  State<BottomSheetDemo> createState() => _BottomSheetState();
}

class _BottomSheetState extends State<BottomSheetDemo> {
  @override
  Widget build(BuildContext context) {
    return settingModalBottomSheet(context);
  }
}

settingModalBottomSheet(context){
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc){
        return Container(
          child: new Wrap(
            children: <Widget>[
              new ListTile(
                  leading: new Icon(Icons.music_note),
                  title: new Text('Music'),
                  onTap: () => {}
              ),
              new ListTile(
                leading: new Icon(Icons.videocam),
                title: new Text('Video'),
                onTap: () => {},
              ),
            ],
          ),
        );
      }
  );
}
