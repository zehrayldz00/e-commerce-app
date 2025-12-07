import 'package:flutter/material.dart';


class TopSelling extends StatelessWidget {
  const TopSelling({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        _topSelling(),
        const SizedBox(height: 10),
        //_products(state.products)
      ],
    );
  }

  Widget _topSelling() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Text(
        'Top Selling',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
    );
  }

  /*Widget _products(List<ProductEntity> products) {
    return SizedBox(
      height: 300,
      child: ListView.separated(
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return ProductCard(productEntity: products[index]);
        },
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemCount: products.length,
      ),
    );
  }*/
}
