import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Categories",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                "See All",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 40,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                _CategoryChip("Fruits & Vegetables"),
                SizedBox(width: 10),
                _CategoryChip("Bakery"),
                SizedBox(width: 10),
                _CategoryChip("Meat & Poultry"),
                SizedBox(width: 10),
                _CategoryChip("Seafood"),
                SizedBox(width: 10),
                _CategoryChip("Canned Goods"),
                SizedBox(width: 10),
                _CategoryChip("Cleaning Supplies"),
                SizedBox(width: 10),
                _CategoryChip("Dairy & Cheese"),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _CategoryChip extends StatelessWidget {
  final String label;

  const _CategoryChip(this.label);

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(label),
      backgroundColor: Colors.grey.shade100,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
