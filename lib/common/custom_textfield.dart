import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTextfield extends StatefulWidget {
  final String hintText;
  final TextEditingController? controller;
  final bool isPassword;
  final String? prefixSvg;

  const CustomTextfield({
    super.key,
    required this.hintText,
    this.controller,
    this.isPassword = false,
    this.prefixSvg,
  });

  @override
  State<CustomTextfield> createState() => _CustomTextfieldState();
}

class _CustomTextfieldState extends State<CustomTextfield> {
  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextField(
        controller: widget.controller,

        obscureText: widget.isPassword ? _obscureText : false,

        style: const TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.normal,
        ),

        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: const TextStyle(color: Colors.grey),

          prefixIcon: widget.prefixSvg != null
              ? Padding(
            padding: const EdgeInsets.all(12.0),
            child: SvgPicture.asset(
              widget.prefixSvg!,
              width: 20,
              height: 20,
            ),
          )
              : null,

          suffixIcon: widget.isPassword
              ? IconButton(
            icon: Icon(
              _obscureText
                  ? Icons.visibility_off
                  : Icons.visibility,
            ),
            onPressed: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
          )
              : null,

          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}

