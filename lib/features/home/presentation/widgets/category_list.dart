import 'package:flutter/material.dart';
import '../../../../core/resources/images/images_path.dart';
import 'category_card.dart';

List<CategoryCell> categoryList = [
  CategoryCell(
    label: 'Fruits',
    image: (ImagesPathts.fruitCategoryCell),
  ),
  CategoryCell(
    label: 'vegetable',
    image: ImagesPathts.vegetableCategoryCell,
  ),
  CategoryCell(
    label: 'cereals',
    image: ImagesPathts.cerealCategoryCell,
  ),
  CategoryCell(
    label: 'condiments',
    image: ImagesPathts.condimentCategoryCell,
  ),
  CategoryCell(
    label: 'nuts',
    image: ImagesPathts.nutsCategoryCell,
  ),
];
