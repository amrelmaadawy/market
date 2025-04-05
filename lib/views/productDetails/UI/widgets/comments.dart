import 'package:flutter/material.dart';

class Comments extends StatelessWidget {
  const Comments(
     {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return const ListTile(
            title: Text('User Name'),
            subtitle: Text('Comment'),
          );
        },
        separatorBuilder: (context, index) {
          return const Divider();
        },
        itemCount: 10);
  }
}
