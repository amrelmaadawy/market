import 'package:app/core/components/product_card.dart';
import 'package:app/core/cubit/home_cubit.dart';
import 'package:app/core/models/product_model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class ListOfProducts extends StatelessWidget {
  const ListOfProducts({
    super.key,
    this.shrinkWrap,
    this.physics,
    this.query,
    this.category,
  });
  final bool? shrinkWrap;
  final ScrollPhysics? physics;
  final String? query;
  final String? category;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          HomeCubit()..getProduct(query: query, category: category),
      child: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {},
        builder: (context, state) {
          String userId = Supabase.instance.client.auth.currentUser!.id;
          List<ProductModel> product = query != null
              ? context.read<HomeCubit>().searchResult
              : category != null
                  ? context.read<HomeCubit>().categoryList
                  : context.read<HomeCubit>().products;
          return ListView.builder(
              shrinkWrap: shrinkWrap ?? true,
              physics: physics ?? const NeverScrollableScrollPhysics(),
              itemCount: product.length,
              itemBuilder: (context, index) {
                return ProductCard(
                  products: product[index],
                  color: Colors.grey,
                  onPressed: () {

                    context
                        .read<HomeCubit>()
                        .addToFave(productId: product[index].productId!, data: {
                      "is_favorite": true,
                      "for_user": userId,
                      "for_product": product[index].productId,
                    });
                  },
                );
              });
        },
      ),
    );
  }
}
