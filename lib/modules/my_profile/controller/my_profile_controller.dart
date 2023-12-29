import '../../../../utils/exports.dart';

class MyProfileController extends BaseGetxController {

  final dateController = TextEditingController().obs;
   RxBool gender = false.obs;

  String _genderType = 'gender';
  String get genderType =>_genderType;
  void setGenderType(String type) {
    _genderType = type;
    print("The order type is "+ _genderType);
    update();
  }

  @override
  ToolBarModel? setUpToolbar() {
    return ToolBarModel(isToolBarVisible: false, currentController: this);
  }

  void isCheckGender(bool? isGender){
    gender.value = isGender!;
  }

}
