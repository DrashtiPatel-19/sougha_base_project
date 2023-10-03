import '../../../utils/exports.dart';

// ignore: must_be_immutable
class CustomDividerWidget extends StatelessWidget {
  double? height;
  Color? color;
  double? width;

  CustomDividerWidget({super.key, this.height, this.color, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      color: color,
      width: width,
    );
  }
}

