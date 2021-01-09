import 'package:flutter/material.dart';

class DrawerFilterItem extends StatelessWidget {

  const DrawerFilterItem({
    Key key,
    this.icon,
    this.iconSize = 26,
    @required this.title,
    this.isChecked = false,
    this.onTap,
  }) : super(key: key);

  final IconData icon;
  final double iconSize;
  final String title;
  final bool isChecked;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsetsDirectional.only(end: 12),
    child: InkWell(
      borderRadius: const BorderRadius.horizontal(right: Radius.circular(30)),
      child: Container(
        decoration: ShapeDecoration(
          color: isChecked
                  ? DecorationPosition.background
                  : Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
              ),
            ),
        padding: const EdgeInsetsDirectional.only(top: 12.5, bottom: 12.5, start: 30, end: 18),
        child: _content(),
      ),
      onTap: onTap,
    ),
  );

  Widget _content() => Row(
    children: <Widget>[
      if (icon != null) Icon(icon,
        size: iconSize,
        color: isChecked ? DecorationPosition.background : Colors.pink,
      ),
      if (icon != null) SizedBox(width: 24),
      Text(title,
        style: const TextStyle(
          color: Colors.pinkAccent,
          fontSize: 16,
        ),
      ),
    ],
  );
}
