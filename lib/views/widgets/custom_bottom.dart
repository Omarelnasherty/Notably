import 'package:flutter/material.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({super.key, this.onTap, this.isLoading = true});
  final void Function()? onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          width: MediaQuery.of(context).size.width,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: const Color.fromARGB(235, 24, 124, 128)),
          child: Center(
            child: isLoading
                ? const CircularProgressIndicator()
                : const Text(
                    'Add',
                    style: TextStyle(color: Colors.black),
                  ),
          )),
    );
  }
}
