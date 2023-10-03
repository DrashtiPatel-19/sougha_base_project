import '../../../utils/exports.dart';

class CustomDialogWidget extends StatelessWidget {
  final String message;
  final String? title;
  final String? okBtnTitle;
  final String? cancelBtnTitle;
  final Function()? onOkClicked;
  final Function()? onCancelClicked;
  final TextStyle? titleStyle;
  final TextStyle? okBtnTitleStyle;

  const CustomDialogWidget({
    required this.message,
    this.title,
    this.okBtnTitle,
    this.cancelBtnTitle,
    this.onOkClicked,
    this.onCancelClicked,
    Key? key,
    this.titleStyle,
    this.okBtnTitleStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      backgroundColor: AppColors.materialWhite,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimens.radius6)),
      child: Container(
        constraints: const BoxConstraints(maxWidth: AppConstant.maxWidth),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: Dimens.space24),
            if (title.isNotNullOrBlank)
              Column(
                children: <Widget>[
                  Text(
                    title!,
                    style: titleStyle ??
                        AppStyles.textMedium
                            .copyWith(fontSize: Dimens.fontSize16),
                  ),
                  const SizedBox(height: Dimens.space12),
                ],
              ),
            if (message.isNotBlank)
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        left: Dimens.padding16, right: Dimens.padding16),
                    child: Text(
                      message,
                      style: AppStyles.textMedium
                          .copyWith(fontSize: Dimens.fontSize16),
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.left,
                    ),
                  ),
                  const SizedBox(
                    height: Dimens.space16,
                    width: Dimens.space28,
                  ),
                ],
              ),
            if (okBtnTitle.isNotBlank && cancelBtnTitle.isNotBlank)
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                          if (onCancelClicked != null) onCancelClicked!();
                        },
                        child: Text(
                          cancelBtnTitle ?? "",
                          style: AppStyles.textMedium.copyWith(
                              color: AppColors.primary,
                              fontSize: Dimens.fontSize16),
                        )),
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                          if (onOkClicked != null) onOkClicked!();
                        },
                        child: Text(
                          okBtnTitle ?? "",
                          style: AppStyles.textSemiBold.copyWith(
                              color: AppColors.primary,
                              fontSize: Dimens.fontSize16),
                        ))
                  ],
                ),
              )
            else if (okBtnTitle.isNotBlank || cancelBtnTitle.isNotBlank)
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    if (onOkClicked != null) onOkClicked!();
                  },
                  child: Text(
                    okBtnTitle ?? "",
                    style: okBtnTitleStyle ?? AppStyles.textMedium,
                  ))
          ],
        ),
      ),
    );
  }
}
