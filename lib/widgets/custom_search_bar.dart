import 'package:flutter/material.dart';

class CustomSearchAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final String hintText;

  const CustomSearchAppBar({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return _buildSearchTextField();
  }

  Widget _buildSearchTextField() {
    return TextField(
      decoration: InputDecoration(
        fillColor: const Color(0xFFFAFAFA),
        filled: true,
        contentPadding: const EdgeInsets.symmetric(horizontal: 40),
        hintText: hintText,
        prefixIcon: const Icon(Icons.search, size: 20,),
        suffixIcon: const Icon(Icons.indeterminate_check_box_outlined, size: 20,),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60.0);
}