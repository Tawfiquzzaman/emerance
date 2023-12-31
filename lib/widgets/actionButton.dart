 import 'package:flutter/material.dart';
class actionButton extends StatelessWidget {
  final title;
  final String route;
  final double height;
  final double width;
  const actionButton({Key? key,
    this.title,
    required this.height,
    required this.width,
    required this.route,
  })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*height,
      width: MediaQuery.of(context).size.width*width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Color(0xFF1d66db)
      ),
      child: MaterialButton(
        onPressed: () {
          Navigator.pushNamed(context,route);
        },
        child: Center(
          child: Text(
            title,
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'PlayfairDisplay',
                fontSize: 21,
                fontWeight: FontWeight.w500
            ),
          ),
        ),
      ),
    );
  }
}
