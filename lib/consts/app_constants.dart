
import 'package:onloneshop/models/categories_model.dart';


class AppConstants {
  static const String imageUrl =
      'https://i.ibb.co/8r1Ny2n/20-Nike-Air-Force-1-07.png';

  static List<String> bannersImages = [
   'lib/icons/Super-Sale-and-Discount-SVG-Vector-Banner.svg',
  
  ];

  static List<CategoriesModel> categoriesList = [
    CategoriesModel(
      id: "Phones",
      image:'lib/icons/phone.svg',
      name: "Phones",
    ),
    CategoriesModel(
      id: "Laptops",
      image: 'lib/icons/laptop.svg',
      name: "Laptops",
    ),
    CategoriesModel(
      id: "Electronics",
      image: 'lib/icons/electronics.svg',
      name: "Electronics",
    ),
    CategoriesModel(
      id: "Watches",
      image: 'lib/icons/watch.svg',
      name: "Watches",
    ),
    CategoriesModel(
      id: "Clothes",
      image: 'lib/icons/womans-clothes-svgrepo-com.svg',
      name: "Clothes",
    ),
    CategoriesModel(
      id: "Shoes",
      image: 'lib/icons/shoes.svg',
      name: "Shoes",
    ),
    CategoriesModel(
      id: "Books",
      image: 'lib/icons/books.svg',
      name: "Books",
    ),
    CategoriesModel(
      id: "Cosmetics",
      image:'lib/icons/cosmetics.svg',
      name: "Cosmetics",
    ),
  ];
}
