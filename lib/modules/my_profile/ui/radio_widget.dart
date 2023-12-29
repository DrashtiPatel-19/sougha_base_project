import '../../../utils/exports.dart';

class OrderTypeButton extends StatelessWidget {
  final String value;
  final String title;


  const OrderTypeButton({

    required this.value,
    required this.title,});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MyProfileController>(
      builder: (buttonController) {
        return InkWell(
          onTap: () => buttonController.setGenderType(value),
          child:
              RadioMenuButton(value: value, groupValue: buttonController.genderType,
                  onChanged: (String? value){

                    buttonController.setGenderType(value!);
                  }, child: Text(title, style: TextStyle(color: Colors.black),),)
              /*Radio(
                value: value,
                groupValue: buttonController.genderType,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                onChanged: (String? value){

                  buttonController.setGenderType(value!);
                },
                activeColor: Theme.of(context).primaryColor,
              ),*/

             /* const SizedBox(width: 10),

              Text(title,),
              const SizedBox(width: 5),*/



        );
      },
    );
  }
}