import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:menu/detail_page.dart';
import 'package:menu/food.dart';
import 'package:menu/style.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    super.key,
    required this.menu,
  });

  final food menu;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => DetailPage(makanan: menu)));
      },
      child: Container(
        margin: EdgeInsets.all(10),
        height: 100,
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        decoration: const BoxDecoration(
            color: Color(0xffBEFFF7),
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                  color: Color.fromARGB(255, 188, 188, 188),
                  offset: Offset(1, 2),
                  blurRadius: 6)
            ]),
        child: Row(
          children: [
            gambar(),
            SizedBox(
              width: 10,
            ),
            deskripsiText(),
            Icon(Icons.food_bank_rounded, color: ButtonColor)
          ],
        ),
      ),
    );
  }

  ClipRRect gambar() {
    return ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        child: Image.asset(
          menu.gambarUtama,
          height: 75,
          width: 85,
          fit: BoxFit.cover,
        ));
  }

  Expanded deskripsiText() {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            menu.nama,
            style: MainFont,
          ),
          Text(
            menu.deskripsi,
            style: TextStyle(color: Colors.black38),
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 3),
          Text(
            'Rp. ${NumberFormat.currency(locale: 'id', symbol: '').format(menu.harga)}',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
