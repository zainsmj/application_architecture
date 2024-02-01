import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFormFieldWidget extends StatelessWidget {
  final TextEditingController? controller;
  final String? initialValue;
  final TextInputType? keyboardType;
  final TextCapitalization? textCapitalization;
  final TextDirection? textDirection;
  final TextAlign? textAlign;
  final bool? readOnly;
  final bool? obscureText;
  final bool? autocorrect;
  final int? maxLines;
  final int? minLines;
  final int? maxLength;
  final List<TextInputFormatter>? inputFormatters;
  final AutovalidateMode? autovalidateMode;
  // DECORATION
  final Widget? icon;
  final Color? iconColor;
  final String? labelText;
  final String? hintText;
  final String? errorText;
  final bool? isCollapsed;
  final bool? isDense;
  final Widget? prefixIcon;
  final String? prefixText;
  final Color? prefixIconColor;
  final Widget? suffixIcon;
  final String? suffixText;
  final Color? suffixIconColor;
  final bool? enabled;
  // ACTIONS
  final void Function(String)? onChanged;
  final void Function()? onTap;
  final void Function(PointerDownEvent)? onTapOutside;
  final void Function()? onEditingComplete;
  final void Function(String)? onFieldSubmitted;
  final void Function(String?)? onSaved;
  // final String Function(String?)? validator;
  final FormFieldValidator<String>? validator;

  const TextFormFieldWidget({
    super.key,
    this.controller,
    this.initialValue,
    this.keyboardType,
    this.textCapitalization,
    this.textDirection,
    this.textAlign,
    this.readOnly,
    this.obscureText,
    this.autocorrect,
    this.maxLines,
    this.minLines,
    this.maxLength,
    this.inputFormatters,
    this.autovalidateMode,
    // DECORATION
    this.icon,
    this.iconColor,
    this.labelText,
    this.hintText,
    this.errorText,
    this.isCollapsed,
    this.isDense,
    this.prefixIcon,
    this.prefixText,
    this.prefixIconColor,
    this.suffixIcon,
    this.suffixText,
    this.suffixIconColor,
    this.enabled,
    // ACTIONS
    this.onChanged,
    this.onTap,
    this.onTapOutside,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.onSaved,
    this.validator,
    // super.onSaved,
    // super.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      initialValue: initialValue,
      keyboardType: keyboardType,
      textCapitalization: textCapitalization ?? TextCapitalization.none,
      textDirection: textDirection,
      textAlign: textAlign ?? TextAlign.start,
      readOnly: readOnly ?? false,
      obscureText: obscureText ?? false,
      autocorrect: autocorrect ?? true,
      maxLines: maxLines ?? 1,
      minLines: minLines,
      maxLength: maxLength,
      inputFormatters: inputFormatters,
      autovalidateMode: autovalidateMode,
      decoration: InputDecoration(
        icon: icon,
        iconColor: iconColor,
        labelText: labelText,
        labelStyle: const TextStyle(),
        hintText: hintText,
        hintStyle: const TextStyle(),
        errorText: errorText,
        errorStyle: const TextStyle(),
        isCollapsed: isCollapsed ?? false,
        isDense: isDense,
        prefixIcon: prefixIcon,
        prefixText: prefixText,
        prefixStyle: const TextStyle(),
        prefixIconColor: prefixIconColor,
        suffixIcon: suffixIcon,
        suffixText: suffixText,
        suffixStyle: const TextStyle(),
        suffixIconColor: suffixIconColor,
        // filled,
        // fillColor,
        // focusColor,
        // hoverColor,
        errorBorder: const OutlineInputBorder(),
        focusedBorder: const OutlineInputBorder(),
        focusedErrorBorder: const OutlineInputBorder(),
        disabledBorder: const OutlineInputBorder(),
        enabledBorder: const OutlineInputBorder(),
        border: const OutlineInputBorder(),
        enabled: enabled ?? true,
      ),
      onChanged: onChanged,
      onTap: onTap,
      onTapOutside: onTapOutside,
      onEditingComplete: onEditingComplete,
      onFieldSubmitted: onFieldSubmitted,
      onSaved: onSaved,
      validator: validator,
    );
  }
}
