import '../../../../utils/exports.dart';

class MyAccountsController extends BaseGetxController {

  @override
  ToolBarModel? setUpToolbar() {
    return ToolBarModel(isToolBarVisible: false, currentController: this , isBottomVisible: false);
  }

  @override
  void onInit() {
    super.onInit();
  }

  void showBottomSheet(){
    showModalBottomSheet(
        context: Get.key.currentContext!,
        builder: (context) {

          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: new Icon(Icons.camera_alt),
                title: new Text('Camera'),
                onTap: () {

                },
              ),
              ListTile(
                leading: new Icon(Icons.photo),
                title: new Text('Gallery'),
                onTap: () {
                },
              ),
              ListTile(
                leading: new Icon(Icons.file_copy),
                title: new Text('Document'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          );
        });
  }

  void callChangePasswordClick(){
    toNamed(AppPaths.changepassword);
  }

  void callMyProfileClick(){
    toNamed(AppPaths.myprofile);
  }

  void callTermsConditionClick(){
    toNamed(AppPaths.termscondition);
  }

  void callPrivacyPolicyClick(){
    toNamed(AppPaths.privacypolicy);
  }

  void callFAQsClick(){
    toNamed(AppPaths.faqs);
  }

  void callChangeLanguageClick(){
    toNamed(AppPaths.changelanguage);
  }

  void callContactUsClick(){
    toNamed(AppPaths.contactus);
  }

}
