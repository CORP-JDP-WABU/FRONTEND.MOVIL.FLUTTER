import 'package:flutter/material.dart';

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({
    super.key,
    required this.onChanged,
    required this.onSearch,
    required this.searchText,
  });

  final Function(String) onChanged;
  final Function() onSearch;
  final String searchText;

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  FocusNode searchBarFocusNode = FocusNode();
  late TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    controller.text = widget.searchText;

    return TextField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(16),
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        fillColor: Colors.white,
        filled: true,
        hintText: 'Busca un profesor o curso',
        suffixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          child: GestureDetector(
            onTap: widget.onSearch,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFFF0A1A0),
                    Color(0xFF8438F3),
                  ],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                ),
              ),
              child: const Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      focusNode: searchBarFocusNode,
      onChanged: widget.onChanged,
      onTapOutside: (event) => searchBarFocusNode.unfocus(),
      style: const TextStyle(
        fontSize: 16,
      ),
    );
  }
}
