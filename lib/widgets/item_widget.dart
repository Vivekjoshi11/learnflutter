import 'package:flutter/material.dart';
import 'package:learnflutter/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget({super.key, required this.item})
      // ignore: unnecessary_null_comparison
      : assert(item != null),
        super( );

  

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: (){
          print("${item.name} pressed");
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        // trailing: Text(item.price.toString()),
        trailing: Text(
          "\$${item.price}",
          style: const TextStyle(
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold
          ),
          ),
      ),
    );
  }
}