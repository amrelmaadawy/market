import 'package:app/core/models/product_model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class Comments extends StatelessWidget {
  const Comments({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: Supabase.instance.client
            .from("comments")
            .stream(primaryKey: ["id"]).eq("product_id", productModel.productId!).order('created_at'),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return (Center(
              child: CircularProgressIndicator(),
            ));
          } else if (snapshot.hasData) {
            List <Map<String,dynamic>> ? data =snapshot.data ;
            
            return ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return  ListTile(
                    title: Text(data[index]["user_name"]),
                    subtitle: Text(data[index]["comment"]),
                    
                  );
                },
                separatorBuilder: (context, index) {
                  return const Divider();
                },
                itemCount: data!.length);
          } else if (snapshot.hasError) {
            return Center(
              child: Text("Error please try again"),
            );
          } else {
            return Center(
              child: Text("No Comments Yet"),
            );
          }
        });
  }
}
