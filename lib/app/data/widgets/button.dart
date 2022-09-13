import 'package:flutter/material.dart';

class CButton extends StatelessWidget {
  final String title;
  final Function onTap;
  final Size size;
  const CButton(
      {super.key,
      required this.title,
      required this.onTap,
      required this.size});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap(),
      child: Container(
        width: size.width / 1.1,
        height: size.height / 13,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.cyan.shade500, Colors.blue.shade700]),
          boxShadow: const [
            BoxShadow(
              offset: Offset(4, 4),
              blurRadius: 8,
              color: Colors.black26,
            )
          ],
        ),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
