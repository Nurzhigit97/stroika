import 'package:flutter/material.dart';
import 'package:stroika/shared/theme/colors/app_colors.dart';

class AppInputWidget extends StatefulWidget {
  final String hintText;
  final TextEditingController? controller;
  final bool? isPasswordField;
  final String? title;
  final FormFieldValidator<String>? validator;
  final TextInputType? inputType;
  final VoidCallback? onTap;
  final void Function(String)? onChanged;
  final Color? filledColor;
  final Color? titleColor;
  final int? maxLines;
  final Widget? leading;
  final bool? isReadOnly;

  const AppInputWidget({
    super.key,
    required this.hintText,
    this.controller,
    this.isPasswordField,
    this.validator,
    this.inputType,
    this.title,
    this.onTap,
    this.onChanged,
    this.filledColor = AppColors.grey1,
    this.titleColor = AppColors.black1,
    this.maxLines = 1,
    this.leading,
    this.isReadOnly = false,
  });

  @override
  State<AppInputWidget> createState() => _AppInputWidgetState();
}

class _AppInputWidgetState extends State<AppInputWidget> {
  bool _obsecureText = true;
  bool isReadOnly = false;

  @override
  void initState() {
    super.initState();
    isReadOnly = widget.onTap == null ? widget.isReadOnly! : true;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.title != null)
          Text(
            widget.title!,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                  color: widget.titleColor,
                  fontSize: 17,
                ),
          ),
        if (widget.title != null) const SizedBox(height: 6),
        TextFormField(
          controller: widget.controller,
          keyboardType: widget.inputType,
          obscureText: widget.isPasswordField == true ? _obsecureText : false,
          cursorColor: AppColors.black1,
          onTap: widget.onTap,
          readOnly: isReadOnly,
          validator: widget.validator,
          onChanged: widget.onChanged,
          maxLines: widget.maxLines,
          decoration: InputDecoration(
            enabled: true,
            prefixIcon: widget.leading,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.withOpacity(.3)),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.withOpacity(.3)),
              borderRadius: BorderRadius.circular(10),
            ),
            errorBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red, width: 1),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            focusedErrorBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red, width: 1),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            filled: true,
            fillColor: widget.filledColor,
            hintText: widget.hintText,
            hintStyle: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),
            contentPadding: const EdgeInsets.fromLTRB(16, 18, 16, 18),
            suffixIcon: widget.onTap == null
                ? widget.isPasswordField == true
                    ? GestureDetector(
                        onTap: () {
                          _obsecureText = !_obsecureText;
                          setState(() {});
                        },
                        child: Icon(
                          _obsecureText
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined,
                          color: AppColors.black1.withOpacity(.6),
                        ),
                      )
                    : null
                : const Icon(
                    Icons.keyboard_arrow_down,
                    color: AppColors.black1,
                  ),
          ),
        ),
      ],
    );
  }
}
