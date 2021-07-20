import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:state_manage/model/user/user_response.dart';

class ItemListUserCommon extends StatelessWidget {
  final DataUser item;
  final Function onTap;
  const ItemListUserCommon(
      {Key? key, required this.item, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    log('rebuild ItemListUserCommon');
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: CachedNetworkImageProvider(item.avatar ?? ''),
      ),
      title: Text('${item.lastName ?? ''} ${item.firstName ?? ''}'),
      subtitle: Text(item.job ?? ''),
      trailing: (item.like ?? false)
          ? const Icon(
              Icons.favorite,
              color: Colors.redAccent,
            )
          : const Icon(Icons.favorite_border),
      onTap: () => onTap(),
    );
  }
}
