import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.onChanged});

  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return  TextField(
      onChanged: onChanged,
      cursorColor: Color(0xffE2BE7F),
      decoration: InputDecoration(
        hintText: 'Sura Name',
        hintStyle: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 15.75),
          child: Image.asset('assets/images/text_field_icon.png'),
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
                color: Color(0xffE2BE7F)
            )
        ),
        focusedBorder:OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
                color: Color(0xffE2BE7F)
            )
        ),
      ),
    );
  }
}
