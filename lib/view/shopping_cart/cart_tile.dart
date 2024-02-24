import 'package:flutter/material.dart';
import 'package:xgrid/widgets/content.dart';

class CartTile extends StatelessWidget {
  final String name;


  const CartTile({super.key,required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
              width: 130, height: 130, child: Image.asset("assets/1.png")),
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Content(
                      data:name,
                      size: 22,
                      color: Colors.grey,
                    ),
                    Content(
                      data:name,
                      size: 22,
                      color: Colors.grey,
                    ),
                    Content(
                      data:name,
                      size: 22,
                      color: Colors.grey,
                    ),
                    Content(
                      data:name,
                      size: 22,
                      color: Colors.grey,
                    ),
                  ],
                ),
              
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.delete_outline,color: Colors.black,
                ),
            SizedBox(height: 30,),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black.withOpacity(0.3))
                  ),
                  child: Row(children: [
                    Icon(Icons.add),
                    Content(data: "1", size: 20),
                    Icon(Icons.remove)
                  ],),
                )
              ],
            )
            ],
            ),
          ),
        ],
      ),
    );
  }
}
