
import 'package:flutter/material.dart';
class ProductWidget extends StatelessWidget {
  const ProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child:  Row(
        children: [
          Expanded(
            flex: 1,
              child: Image.network("")),
          Expanded(
              flex: 3,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("title", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 13),),
                      Text("rating and review", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 13),),
                    ],
                  ),
                  Text("description", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 13),),
                ],
              ))

        ],
      ),
    );
  }
}
