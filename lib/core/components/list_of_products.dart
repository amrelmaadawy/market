import 'package:app/core/components/product_card.dart';
import 'package:app/core/cubit/home_cubit.dart';
import 'package:app/core/models/product_model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListOfProducts extends StatelessWidget {
  const ListOfProducts({
    super.key,
    this.shrinkWrap,
    this.physics,
  });
  final bool? shrinkWrap;
  final ScrollPhysics? physics;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit()..getProduct(),
      child: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {},
        builder: (context, state) {
          List<ProductModel> product = context.read<HomeCubit>().products;
          return ListView.builder(
              shrinkWrap: shrinkWrap ?? true,
              physics: physics ?? const NeverScrollableScrollPhysics(),
              itemCount: product.length,
              itemBuilder: (context, index) {
                return const ProductCard();
              });
        },
      ),
    );
  }
}
