import '../../../utils/exports.dart';

class ContactUsPage extends BaseGetResponsiveView<ContactUsController> {
  ContactUsPage({Key? key}) : super(key: key);

  Widget buildView() {
    return Scaffold(
      bottomNavigationBar: BottomNavigationWidget(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(height: 30,),
            Row(
              children: [
                Icon(
                  Icons.arrow_back_outlined,
                  color: AppColors.color686662,
                ),
                SizedBox(width: 20,),
                Text(AppString.txtContactUs,
                    style: TextStyle(
                        color: AppColors.color00000080,
                        fontSize: 20,
                        fontFamily: 'josefinsans')),
              ],
            ),
            SizedBox(height: 30,),
            Text(AppString.txtContactUsSubtext,
                style: TextStyle(
                    color: AppColors.color212121,
                    fontSize: 18,
                    height: 1.2,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'josefinsans')),
            SizedBox(height: 30,),
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                    },
                    child: Column(
                      children: [
                        Icon(Icons.phone_in_talk , size: 50, color: AppColors.color686662,),
                        SizedBox(height: 10,),
                        Text("Phone" , style: TextStyle(
                            color: AppColors.color212121,
                            fontSize: 18,
                            height: 1.2,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'josefinsans'))
                      ],
                    ),
                  ),
                  VerticalDivider(
                    width: 2,
                    color: AppColors.colorC4C0BA,
                    thickness: 2,
                  ),
                  InkWell(
                    onTap: () {

                    },
                    child: Column(
                      children: [
                        Icon(Icons.mail_outline_sharp , size: 50, color: AppColors.color686662,),
                        SizedBox(height: 10,),
                        Text("Email" , style: TextStyle(
                            color: AppColors.color212121,
                            fontSize: 18,
                            height: 1.2,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'josefinsans'))
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 50,),
            Text(AppString.txtContactTiming,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: AppColors.color212121,
                      fontSize: 16,
                      height: 1.2,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'josefinsans')),

          ],
        ),
      ),
    );
  }


 /* makingPhoneCall() async {
    var url = Uri.parse("tel:9512362200");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }*/

  @override
  Widget buildDesktopWidget() {
    return buildView();
  }

  @override
  Widget buildPhoneWidget() {
    return buildView();
  }

  @override
  Widget buildTabletWidget() {
    return buildView();
  }

  @override
  String getTag() {
    return (ContactUsController).toString();
  }
}
