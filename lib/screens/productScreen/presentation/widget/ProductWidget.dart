import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  String id;
  String title;
  String price;
  String description;
  String category;
  String image;
  String rate;
  String count;
  ProductWidget({
    super.key,
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.rate,
    required this.count
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SizedBox(
        height: 150,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Row(
              children: [
                Expanded(child: Image.network(image, height: double.infinity, width: 200,)),
                SizedBox(width: 5,),
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Common(value: title, valueColor: Colors.black, valueSize: 14, weight: FontWeight.bold),
                      SizedBox(width: 5,),
                      Common(value: "${rate}/5 . (${count})reviews}", valueColor: Colors.grey, valueSize: 12, weight: FontWeight.normal),
                      SizedBox(height: 5,),
                      SizedBox(
                          height: 15,
                          child: Text(description, style: TextStyle(color: Colors.grey, fontSize: 12,), overflow: TextOverflow.ellipsis,)),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          Common(value: "₹ $price", valueColor: Colors.deepPurple, valueSize: 13, weight: FontWeight.bold),
                          Spacer(),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.purpleAccent.withOpacity(0.1),
                                border: Border.all(color: Colors.purpleAccent)
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                            child: Common(value: category, valueColor: Colors.purpleAccent, valueSize: 12, weight: FontWeight.bold),
                          )
                        ],
                      )

                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget Common({required String value, required Color valueColor, required double valueSize, required FontWeight weight}){
    return Text("$value", style:  TextStyle(color:  valueColor, fontSize: valueSize, fontWeight: weight),);
  }
}
