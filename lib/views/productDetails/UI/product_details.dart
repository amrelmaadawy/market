import 'package:app/core/components/cashed_loading_image.dart';
import 'package:app/core/functions/custom_app_bar.dart';
import 'package:app/core/components/custom_text_form_field.dart';
import 'package:app/core/models/product_model/product_model.dart';
import 'package:app/views/productDetails/UI/widgets/comments.dart';
import 'package:app/views/productDetails/UI/widgets/rating.dart';
import 'package:app/views/productDetails/logic/product_details_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key, required this.product});
  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    TextEditingController feedBackController = TextEditingController();
    return BlocProvider(
      create: (context) =>
          ProductDetailsCubit()..getRate(productId: product.productId!),
      child: BlocConsumer<ProductDetailsCubit, ProductDetailsState>(
        listener: (context, state) {},
        builder: (context, state) {
          ProductDetailsCubit cubit = context.read<ProductDetailsCubit>();
          return Scaffold(
            appBar: customAppBar(context, product.productName ?? ''),
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: CashedLoadingWidget(imageUrl: product.imageUrl),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(product.productName ?? 'Product Name'),
                        Text(product.price ?? ''),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Text('${cubit.avrage}'),
                        Icon(
                          Icons.star,
                          color: Colors.yellow[700],
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.favorite,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Center(
                        child:
                            Text(product.description ?? 'Product Description')),
                    Rating(rate : cubit.userRate.toDouble()),
                    const SizedBox(
                      height: 16,
                    ),
                    CustomTextFormFeild(
                      lableText: 'Enter Your Feed Back',
                      controller: feedBackController,
                      obscureText: false,
                      keyboardType: TextInputType.text,
                      suffixIcon: IconButton(
                          onPressed: () {}, icon: const Icon(Icons.send)),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Text('Comments',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )),
                    const Comments()
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
