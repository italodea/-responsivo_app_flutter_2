import 'package:flutter/material.dart';

import 'package:responsive_framework/responsive_framework.dart';

class ResponsiveMenuAction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ResponsiveVisibility(
          visible: true,
          hiddenWhen: [
            Condition.largerThan(name: MOBILE),
          ],
          child: IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: null,
          ),
        ),
        const SizedBox(width: 8),
        IconButton(
          icon: Icon(
            Icons.home,
            color: Colors.white,
          ),
          onPressed: null,
        ),
        const SizedBox(width: 8),
        IconButton(
          icon: Icon(
            Icons.send,
            color: Colors.white,
          ),
          onPressed: null,
        ),
        const SizedBox(width: 8),
        IconButton(
          icon: Icon(
            Icons.favorite_border,
            color: Colors.white,
          ),
          onPressed: null,
        ),
        const SizedBox(width: 16),
        CircleAvatar(
          radius: 16,
          backgroundImage: NetworkImage(
              "https://avatars.githubusercontent.com/u/18667307?v=4"),
        )
      ],
    );
  }
}
