import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_icon.dart';

class CostumAppBar extends StatelessWidget {
  const CostumAppBar(
      {super.key, required this.title, required this.icon, this.onpressed});

  final String title;
  final IconData icon;
  final void Function()? onpressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 32),
        ),
        const Spacer(),
        Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.05),
                borderRadius: BorderRadius.circular(16)),
            child: CustomIcon(
              icon: icon,
              onPressed: onpressed,
            )),
      ],
    );
  }
}
