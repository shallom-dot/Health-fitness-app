import 'package:flutter/material.dart';
import 'package:health_fitness_app/utils/routes.dart';

class ListItemWidget extends StatelessWidget {
  final String assetUrl;
  final String title;
  final String subtitle;
  final String trailing;

  const ListItemWidget({
    super.key,
    required this.assetUrl,
    required this.title,
    required this.subtitle,
    required this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){
        Navigator.pushNamed(context, StaticRoutes.helpScreen);
      },
      leading: CircleAvatar(
        backgroundImage: AssetImage(assetUrl),
      ),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Text(trailing),
    );
  }
}