import 'package:flutter/material.dart';
import 'package:praktikum_5/configs/demo.dart';

class FoodCategories extends StatelessWidget {
  const FoodCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder:
            (context, index) => Container(
              margin: EdgeInsets.only(left: index == 0 ? 16 : 0),
              width: 100,
              child: GestureDetector(
                onTap: () {
                  // Aksi ketika item diklik
                  print('Category ${categories[index]['name']} diklik');
                },
                child: Column(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(categories[index]['icon']),
                    ),
                    SizedBox(height: 8),
                    Text(categories[index]['name']),
                  ],
                ),
              ),
            ),
      ),
    );
  }
}
