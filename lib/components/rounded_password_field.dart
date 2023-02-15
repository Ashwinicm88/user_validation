import 'package:flutter/material.dart';
import 'package:user_validation/components/text_field_container.dart';
import 'package:user_validation/constraints.dart';


class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TextFieldContainer(
        child: TextField(
          obscureText: true,
          // onChanged: onChanged,
          decoration: InputDecoration(
            hintText: "Password",
            icon:Icon(
              Icons.lock,
              color: kPrimaryColor,
            ),
            suffixIcon: Icon(
              Icons.visibility,
              color: kPrimaryColor,
            ),
            border: InputBorder.none,
          ),
        ));
  }
}

