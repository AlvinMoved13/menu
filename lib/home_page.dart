import 'package:flutter/material.dart';
import 'package:menu/food.dart';
import 'package:menu/list_item.dart';
import 'package:menu/style.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<food> listMenu = food.dummyData;
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.list_alt,
                size: 20,
              ),
              Text(
                'List Menu',
                style: MainFont,
              ),
            ],
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: listMenu.length,
              itemBuilder: (context, index) {
                return ListItem(menu: listMenu[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
