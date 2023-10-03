import '../../../utils/exports.dart';

class CustomTextLabelWidget extends StatelessWidget {
  final String label;
  final TextStyle? style;
  final TextOverflow? overflow;
  final int? maxLines;
  final TextAlign? textAlign;

  const CustomTextLabelWidget(
      {Key? key,
      this.label = "",
      this.style,
      this.overflow,
      this.maxLines,
      this.textAlign = TextAlign.center})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
       label,
      style: style ?? AppStyles.textNormal.copyWith(color: AppColors.primary),
      overflow: overflow,
      maxLines: maxLines,
      textAlign: textAlign,
    );
  }
}

class CustomRichTextLabelWidget extends StatelessWidget {
  final String primaryLabel;
  final String? strikeLabel;
  final String secondaryLabel;
  final TextStyle? primaryStyle;
  final TextStyle? strikeLabelStyle;
  final TextStyle? secondaryStyle;
  final Function? onTapSecondaryLabel;
  final Function? onTapPrimaryLabel;
  final int maxLines;
  final bool? isSpaceNeeded;

  const CustomRichTextLabelWidget(
      {Key? key,
      this.maxLines = Dimens.maxLines2,
      this.primaryLabel = "",
      this.secondaryLabel = "",
      this.primaryStyle,
      this.onTapPrimaryLabel,
      this.onTapSecondaryLabel,
      this.secondaryStyle,
      this.isSpaceNeeded,
      this.strikeLabel,
      this.strikeLabelStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      text: TextSpan(
        recognizer: TapGestureRecognizer()
          ..onTap = () {
            onTapPrimaryLabel?.call();
          },
        text: primaryLabel,
        style: primaryStyle ??
            AppStyles.textNormal.copyWith(color: AppColors.materialWhite),
        children: [
          TextSpan(text: strikeLabel, style: strikeLabelStyle),
          //will add space between two line
          WidgetSpan(
              alignment: PlaceholderAlignment.baseline,
              baseline: TextBaseline.alphabetic,
              child: SizedBox(
                height: Dimens.iconSize16,
                width:
                    (isSpaceNeeded ?? true) ? Dimens.padding4 : Dimens.padding0,
              )),
          TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                onTapSecondaryLabel?.call();
              },
            text: secondaryLabel,
            style: secondaryStyle ??
                AppStyles.textBold.copyWith(color: AppColors.materialWhite),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class CustomTextLabelWithIconWidget extends StatelessWidget {
  final String label;
  final TextStyle? style;
  final TextOverflow? overflow;
  final int? maxLines;
  final TextAlign? textAlign;
  final SvgGenImage? image;
  final Color? imageColor;
  final Size? size;
  final bool isPrefix, isSuffix;
  EdgeInsetsGeometry iconPadding;

  CustomTextLabelWithIconWidget(
      {Key? key,
      this.label = "",
      this.style,
      this.isPrefix = false,
      this.isSuffix = false,
      this.overflow,
      this.iconPadding =
          const EdgeInsets.only(left: Dimens.padding8, right: Dimens.padding8),
      this.image,
      this.imageColor,
      this.maxLines,
      this.size = const Size(Dimens.iconSize14, Dimens.iconSize14),
      this.textAlign = TextAlign.center})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Visibility(
          visible: image != null && isPrefix,
          child: Padding(
            padding: iconPadding,
            child: image?.svg(
              height: size?.height,
              width: size?.width,
              colorFilter: ColorFilter.mode(
                imageColor ?? AppColors.transparent,
                BlendMode.srcATop,
              ),
            ),
          ),
        ),
        Expanded(
          flex: maxLines != null && maxLines! > Dimens.maxLines1
              ? Dimens.maxLines1
              : (image == null ? Dimens.maxLines1 : Dimens.maxLines0),
          child: CustomTextLabelWidget(
            label: label,
            style: style ??
                AppStyles.textNormal.copyWith(color: AppColors.primary),
            overflow: overflow,
            maxLines: maxLines,
            textAlign: textAlign,
          ),
        ),
        Visibility(
          visible: image != null && isSuffix,
          child: Padding(
            padding: iconPadding,
            child: image?.svg(
              height: size?.height,
              width: size?.width,
              colorFilter: ColorFilter.mode(
                imageColor ?? AppColors.transparent,
                BlendMode.srcATop,
              ),
            ),
          ),
        )
      ],
    );
  }
}

class CustomUnderlineTextWidget extends StatelessWidget {
  final String title;
  final Function onTap;
  final TextStyle? titleTextStyle;

  const CustomUnderlineTextWidget({
    Key? key,
    required this.title,
    required this.onTap,
    this.titleTextStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap as void Function()?,
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        minimumSize: const Size(Dimens.space50, Dimens.space18),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        alignment: Alignment.center,
      ).copyWith(
          overlayColor: MaterialStateProperty.all(
        AppColors.transparent,
      )),
      child: CustomTextLabelWidget(
        label: title,
        textAlign: TextAlign.center,
        style: (titleTextStyle ?? AppStyles.textNormal).copyWith(
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}
