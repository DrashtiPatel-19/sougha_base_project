// ignore_for_file: deprecated_member_use_from_same_package

import '../../../utils/exports.dart';

/// Custom TextField
class CustomTextFormFieldWidget extends StatelessWidget {
  ///[label] will be display in text field
  final String label;

  ///[validator] form filed validator will pass validation method
  final FormFieldValidator? validator;

  ///[focusNode] FocusNode for TextField
  final FocusNode? focusNode;

  ///[autoFocus] focus on the TextField as soon as it’s visible
  final bool autoFocus;

  ///[controller] controller for textfield
  final TextEditingController controller;

  ///[onChange] onchange method
  final ValueChanged<String>? onChange;

  ///[textInputType] give the type of text input in textfield
  final TextInputType? textInputType;

  ///[prefix] Custom Widget for  prefix
  final Widget? prefix;

  ///[prefixIcon] SvgGenImage to be shown as prefix.
  final SvgGenImage? prefixIcon;

  ///[maxLength] maxlength of Text
  final int? maxLength;

  ///[maxLines] maximum line of Text
  final int? maxLines;

  ///[suffixOnClick] Suffix Widget Click Event
  final Function()? suffixOnClick;

  ///[hint] hint text
  final String? hint;

  ///[hintStyle] Style for hint in textField
  final TextStyle? hintStyle;

  /// [input] type of keyboard button like go, next, done
  final TextInputAction? input;

  ///[obscureText] is Sequrity on or off
  final bool? obscureText;

  /// [prefixIconSize] size of prefix
  final Size? prefixIconSize;

  /// [suffixIconSize] size of prefix
  final Size? suffixIconSize;

  /// [prefixIconConstraints] BoxConstraints of prefix
  final BoxConstraints? prefixIconConstraints;

  /// [suffixIconConstraints] BoxConstraints of suffix
  final BoxConstraints? suffixIconConstraints;
  final Key? key1;

  ///[suffix] custom widget for suffix
  final Widget? suffix;

  ///[inputFormatters] validator for entering value in text field
  final List<TextInputFormatter>? inputFormatters;

  ///[style] style for text in text field
  final TextStyle? style;

  ///[suffixIcon] SvgGenImage to be shown as suffix icon
  final SvgGenImage? suffixIcon;

  ///[isEditable] value for enable and disable text field
  final bool? isEditable;

  ///[borderColor] bordercolor for textfield
  final Color? borderColor;

  ///[isValidate] validated text field from bool value
  final Rx<bool>? isValidate;

  ///[prefixIconColor] prefix Icon Color
  final Color? prefixIconColor;

  ///[errorStyle] Style for Error
  final TextStyle? errorStyle;

  ///[floatingStyle] Style of Floating label
  final TextStyle? floatingStyle;

  ///[onTextSubmit] onTextSubmit of text field
  final Function(String)? onTextSubmit;

  ///[cursorColor] Color for Cursor
  final Color? cursorColor;

  ///[GestureTapCallback]  on tap of text field
  final GestureTapCallback? onTap;

  ///[readOnly] can not edit text field
  final bool? readOnly;

  ///[FloatingLabelBehavior] defines the behavior of Floating label
  final FloatingLabelBehavior floatingLabelBehavior;

  ///[alignLabelWithHint] defines that the hint
  ///should be aligned with label or not.
  final bool alignLabelWithHint;

  //[title] defines the title above the edit field
  final String? title;

  ///[titleStyle] Style of title label
  final TextStyle? titleStyle;

  const CustomTextFormFieldWidget(
      {required this.controller,
      this.key1,
      this.focusNode,
      this.maxLength,
      this.label = "",
      this.errorStyle,
      this.validator,
      this.hintStyle,
      this.titleStyle,
      this.title,
      this.prefixIconColor = Colors.transparent,
      this.autoFocus = false,
      this.onChange,
      this.textInputType = TextInputType.text,
      this.prefix,
      this.readOnly = false,
      this.cursorColor,
      this.input,
      this.isEditable,
      this.onTap,
      this.prefixIcon,
      this.obscureText = false,
      this.hint,
      this.suffix,
      this.style,
      this.suffixIcon,
      this.floatingStyle,
      this.borderColor,
      this.inputFormatters,
      this.maxLines = 1,
      this.onTextSubmit,
      this.prefixIconConstraints = const BoxConstraints(
          minWidth: Dimens.space25, minHeight: Dimens.space25, maxWidth: Dimens.space50, maxHeight: Dimens.space50),
      this.suffixIconConstraints = const BoxConstraints(
          minWidth: Dimens.space25, minHeight: Dimens.space25, maxWidth: Dimens.space50, maxHeight: Dimens.space50),
      this.prefixIconSize = const Size(Dimens.iconSize16, Dimens.iconSize16),
      this.suffixIconSize,
      this.suffixOnClick,
      this.isValidate,
      FloatingLabelBehavior? floatingLabelBehavior,
      bool? alignLabelWithHint})
      : floatingLabelBehavior =
            floatingLabelBehavior ?? FloatingLabelBehavior.auto,
        alignLabelWithHint = alignLabelWithHint ?? true,
        super(key: key1);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Visibility(
            visible: title.isNotNullOrEmpty,
            child: Container(
              margin: const EdgeInsets.only(
                  top: Dimens.padding8, bottom: Dimens.padding8),
              child: CustomTextLabelWidget(
                label: title ?? "",
                style: titleStyle,
              ),
            )),
        TextFormField(
            enableInteractiveSelection: false,
            maxLength: maxLength,
            controller: controller,
            validator: validator,
            onTap: onTap,
            keyboardType: textInputType,
            textInputAction: input,
            onChanged: onChange,
            readOnly: readOnly!,
            focusNode: focusNode,
            autofocus: autoFocus,
            onFieldSubmitted: (submit) => onTextSubmit != null
                ? onTextSubmit?.call(submit)
                : (input == TextInputAction.next
                    ? FocusScope.of(context).nextFocus()
                    : null),
            inputFormatters: inputFormatters ?? ([]),
            style: style ??
                AppStyles.textNormal.copyWith(fontSize: Dimens.fontSize16),
            maxLines: maxLines,
            enabled: isEditable,
            cursorColor: AppColors.primary,
            obscureText: obscureText!,
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: Dimens.padding10),
              alignLabelWithHint: alignLabelWithHint,
              floatingLabelBehavior: floatingLabelBehavior,
              counter: const SizedBox(),
              suffixIconConstraints: suffixIconConstraints,
              prefixIconConstraints: prefixIconConstraints,
              prefix: prefix,
              errorStyle: errorStyle ?? AppStyles.errorStyle,
              labelText: label,
              hintText: hint,
              prefixIcon: prefixIcon != null
                  ? Padding(
                      padding: const EdgeInsets.only(
                          left: Dimens.padding14, right: Dimens.padding8),
                      child: prefixIcon?.svg(
                        height: prefixIconSize?.height,
                        width: prefixIconSize?.width,
                        colorFilter: ColorFilter.mode(
                          prefixIconColor ?? AppColors.transparent,
                          BlendMode.srcATop,
                        ),
                      ),
                    )
                  : null,
              suffix: suffix,
              suffixIcon: suffixIcon != null
                  ? GestureDetector(
                      onTap: suffixOnClick,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          right: Dimens.padding14,
                          left: Dimens.padding8,
                        ),
                        child: suffixIcon?.svg(
                          height: suffixIconSize?.height,
                          width: suffixIconSize?.width,
                          colorFilter: ColorFilter.mode(
                            prefixIconColor ?? AppColors.transparent,
                            BlendMode.srcATop,
                          ),
                        ),
                      ),
                    )
                  : null,
            )),
      ],
    );
  }
}
