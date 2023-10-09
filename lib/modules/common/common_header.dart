import 'package:flutter/material.dart';
import 'package:flutter_base/base/base.dart';
import 'package:flutter_base/modules/login/controller/login_controller.dart';
import 'package:flutter_base/utils/exports.dart';
import '../../app/core/theme/app_colors.dart';
import '../../app/translations/app_string.dart';
import '../../gen/assets.gen.dart';

class CommonHeader extends BaseGetView<LoginController> {
  @override
  Widget buildView(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 280,
      alignment: Alignment.topLeft,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomLeft,
            stops: const [
              0.1,
              0.8,
              0.1
            ],
            colors: [
              AppColors.colorGradient1,
              AppColors.colorStatusbar,
              AppColors.colorStatusbar
            ]),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 10),
                  child: InkWell(
                    child: Icon(
                      Icons.arrow_back_outlined,
                      color: AppColors.color686662,
                    ),
                    onTap: () {
                      Get.toNamed(AppPaths.welcome);
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text(
                    AppString.txtSkip,
                    style: TextStyle(
                        color: AppColors.color686662,
                        fontSize: 18,
                        fontFamily: 'josefinsans'),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Assets.png.icMainLogo.image(width: 150)
          ],
        ),
      ),
    );
  }

  @override
  String getTag() => (LoginController).toString();
}
