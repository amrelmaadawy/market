import 'package:app/core/components/cashed_loading_image.dart';
import 'package:app/core/functions/custom_app_bar.dart';
import 'package:app/core/components/custom_text_form_field.dart';
import 'package:app/views/productDetails/widgets/comments.dart';
import 'package:app/views/productDetails/widgets/rating.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController feedBackController = TextEditingController();
    return Scaffold(
      appBar: customAppBar(context, 'Product Name'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: const CashedLoadingWidget(
                    imageUrl:
                        "https://img.freepik.com/free-psd/circle-discount-sale-podium_35913-2513.jpg?t=st=1738732832~exp=1738736432~hmac=c97147653932da8294749ff6181c671f46287b814908e81bdebd9608602f93d9&w=1060"),
              ),
              const SizedBox(
                height: 16,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Product Name'),
                  Text('Product Price'),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  const Text('Product Rate'),
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
              const Center(child: Text('Product Description')),
              const Rating(),
              const SizedBox(
                height: 16,
              ),
              CustomTextFormFeild(
                lableText: 'Enter Your Feed Back',
                controller: feedBackController,
                obscureText: false,
                keyboardType: TextInputType.text,
                suffixIcon:
                    IconButton(onPressed: () {}, icon: const Icon(Icons.send)),
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
  }
}
