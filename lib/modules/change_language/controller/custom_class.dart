import 'package:flutter/material.dart';

import '../../../app/core/theme/app_colors.dart';
import '../../../gen/assets.gen.dart';

class CustomListTile extends StatefulWidget {
  @override
  _CustomListTileState createState() => _CustomListTileState();
}

class _CustomListTileState extends State<CustomListTile> {
  bool isTrailingIconVisible = false;
  var myListItem = ["UAE", "QATAR", "OMAN"];


  void toggleTrailingIconVisibility() {
    setState(() {
      isTrailingIconVisible = !isTrailingIconVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,

      itemBuilder: (context, position) {
        return GestureDetector(
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(
                color: Colors.white,
              ),
            ),
            elevation: 4,
            shadowColor: Colors.white,
            child: ListTile(
              onTap: () {

              },
              contentPadding: EdgeInsets.all(15),
              leading: Assets.png.icUaeFlag.image(width: 30),
              title: Text(
                myListItem[position],
                style: TextStyle(
                  fontSize: 20,
                  color: AppColors.color212121,
                ),
              ),
              ),
          ),
        );

      },
      itemCount: myListItem.length,
    );
  }
}
