import 'package:flutter/material.dart';
class editRow extends StatelessWidget {
  final title;
  final String val;
  const editRow({Key? key, this.title, required this.val}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex:2,
          child: Text(title,
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w500
            ),
          ),
        ),
        SizedBox(width: 2),
        Expanded(
          flex:5,
          child:TextFormField(
            initialValue: val,
            decoration: InputDecoration(
              //label: Text('Full Name :')
            ),
          ),
        )
      ],
    );
  }
}
