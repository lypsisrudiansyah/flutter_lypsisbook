import 'package:flutter/material.dart';
import 'package:flutter_lypsisbook/core.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductDetailView extends StatefulWidget {
  final Map item;
  const ProductDetailView({Key? key, required this.item}) : super(key: key);

  Widget build(context, ProductDetailController controller) {
    controller.view = this;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Colors.black.withOpacity(.6),
            child: const BackButton(
              color: Colors.white,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.favorite,
                color: item['is_favorite'] == true ? Colors.red : Colors.black87,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    item['photo'],
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          item['product_name'],
                          style: const TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        "\$${item['price']}",
                        style: const TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    item['category'],
                    style: const TextStyle(
                      fontSize: 13.0,
                    ),
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    color: primaryColor.withOpacity(.05),
                    child: Row(
                      children: [
                        RatingBar.builder(
                          initialRating: 4.5,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          itemSize: 24.0,
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        const Spacer(),
                        const Text(
                          "200 Reviews",
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                        const SizedBox(
                          width: 2.0,
                        ),
                        const Icon(
                          Icons.chevron_right,
                          size: 24.0,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text("Description"),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    item['description'],
                    style: const TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                  Text(
                    item['description'],
                    style: const TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                  Text(
                    item['description'],
                    style: const TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                  Text(
                    item['description'],
                    style: const TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Expanded(
              child: LypsisButtonFW(text: "Wishlist", color: disabledColor, textColor: disabledTextColor, onPressed: () {}),
            ),
            const SizedBox(
              width: 10.0,
            ),
            Expanded(
              child: LypsisButtonFW(text: "Add to Cart", onPressed: () {}),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<ProductDetailView> createState() => ProductDetailController();
}
