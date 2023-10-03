
import '../../../utils/exports.dart';

class CustomButtonWidget extends StatelessWidget {
  final String title;
  final String? image;
  final TextStyle? titleTextStyle;
  final Function? onTap;
  final bool isLoading;
  final Color backgroundColor;
  final Color? disabledColor;
  final Color titleColor;
  final bool hasBorder;
  final Color borderColor;
  final double borderWidth;
  final double borderRadius;
  final bool isEnabled;
  final double height;
  final double width;
  final double imageWidth;
  final double imageHeight;

  CustomButtonWidget({
    required this.title,
    this.image,
    this.titleTextStyle,
    this.onTap,
    this.isLoading = false,
    Color? backgroundColor,
    Colors? disabledColor,
    this.titleColor = Colors.white,
    this.hasBorder = false,
    Color? borderColor,
    this.borderWidth = Dimens.borderWidth1,
    this.borderRadius = Dimens.radius12,
    this.isEnabled = true,
    this.height = Dimens.buttonSize40,
    this.width = double.infinity,
    this.imageHeight = Dimens.iconSize18,
    this.imageWidth = Dimens.iconSize18,
    Key? key,
  }) : backgroundColor = AppColors.primary,
        disabledColor = AppColors.primary,
        borderColor = AppColors.primary,
  super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          side: BorderSide(
              color: borderColor,
              width: borderWidth,
              style: hasBorder ? BorderStyle.solid : BorderStyle.none),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        backgroundColor:
            isEnabled && !isLoading ? backgroundColor : disabledColor,
        textStyle: (titleTextStyle ?? AppStyles.textNormal).copyWith(color: titleColor),
      ),
      onPressed: isEnabled && onTap != null && !isLoading
          ? onTap as void Function()?
          : () {},
      child: Container(
        constraints: const BoxConstraints(maxWidth: AppConstant.maxWidth),
        height: height,
        width: width,
        child: Center(
          child: isLoading
              ? SizedBox(
                  width: Dimens.iconSize28,
                  height: Dimens.iconSize28,
                  child: CircularProgressIndicator(
                    strokeWidth: Dimens.borderWidth2,
                    valueColor:
                        const AlwaysStoppedAnimation<Color>(Colors.black),
                    backgroundColor: Colors.black.withOpacity(0.2),
                  ),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (image != null) ...[
                      SizedBox(
                        width: imageWidth,
                        height: imageHeight,
                        child: Image.asset(
                          image!,
                          fit: BoxFit.fill,
                        ),
                      ),
                      const SizedBox(
                        width: Dimens.space8,
                      ),
                    ],
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(title,
                          style: (titleTextStyle ?? AppStyles.textNormal).apply(color: titleColor)),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
