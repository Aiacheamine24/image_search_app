import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    required this.label,
    this.hintText,
    this.prefixIcon,
    this.obscureText = false,
    this.controller,
    this.onFieldSubmitted,
    this.isPassword = false,
    this.isReadOnly = false,
    this.keyboardType = TextInputType.text,
    this.keyboardAppearance = Brightness.light,
  });

  final String label;
  final String? hintText;
  final Icon? prefixIcon;
  final bool obscureText;
  final bool isPassword;
  final bool isReadOnly;
  final TextInputType keyboardType;
  final Brightness keyboardAppearance;
  final TextEditingController? controller;
  final void Function(String)? onFieldSubmitted;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: widget.keyboardType,
      keyboardAppearance: widget.keyboardAppearance,
      onEditingComplete: () => widget.onFieldSubmitted?.call(''),
      controller: widget.controller,
      obscureText: widget.isPassword ? _obscureText : widget.obscureText,
      readOnly: widget.isReadOnly,
      decoration: InputDecoration(
        prefixIcon: widget.prefixIcon,
        suffixIcon: widget.isPassword
            ? IconButton(
                icon: Icon(
                  _obscureText ? Icons.visibility : Icons.visibility_off,
                ),
                onPressed: _togglePasswordVisibility,
              )
            : null,
        labelText: widget.label,
        hintText: widget.hintText ?? widget.label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0), // replace with your radius
        ),
      ),
    );
  }
}
