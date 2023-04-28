import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeCh3View extends GetView {
  const HomeCh3View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(
          'HomeCh3View is working',
          style: TextStyle(fontSize: 20),
          ),
        ),
        Expanded(
          flex: 1,
          child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text('Popup Title'),
                  content: const Text('Popup Content'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('Close'),
                    ),
                  ],
                );
              },
            );
          },
          child: const Text('Show Popup'),
        ),
        )
      ],
    );
  }
}
