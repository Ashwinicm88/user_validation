import 'package:flutter/material.dart';
import 'package:user_validation/components/text_field_container.dart';
import 'package:user_validation/constraints.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key? key,
    required this.hintText,
    this.icon = Icons.person,
    required this.onChanged,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TextFieldContainer(
      child:TextField(
        // onChanged: onChanged,
        decoration: InputDecoration(
          icon: Icon(
            Icons.person,
            color: kPrimaryColor,
          ),
          hintText: "Your Email",
          border: InputBorder.none,
        ),
      ),
    );
  }
}
